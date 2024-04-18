<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>destination</title>
<style>

	table {
    border-collapse: collapse;
    width: 80%; /* Adjust the width of the table as needed */
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #f2f2f2;
    color: #333;
}
</style>
</head>
<body bgcolor=#71dff5>
<h2>Tour Packages for <%= request.getParameter("destination") %>:</h2>
    <table border="1" class=center>
        <tr>
        	<th>Package Name</th>
        	<th>Hotel Name</th>
            <th>Mode of transport</th>
            <th>Duration</th>
            <th>Price</th>
            <th>Book</th> <!-- Add a column for the "Book Now" button -->
        </tr>
        <% 
            String destination = request.getParameter("destination");
            try {
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mproject", "root", "shweta");
                // Create SQL statement to select tour packages for the specified destination
                String sql = "SELECT k.packagename,h.hotelname, p.pricesid, p.transportmode, p.duration , p.price FROM prices p, packages k, hotels h WHERE p.packageid = k.packageid and p.hotelid=h.hotelid and p.destination = ?";
                  
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, destination);
                ResultSet rs = stmt.executeQuery();
                // Iterate over the result set and display tour package details
                while (rs.next()) {
                	String pricesid=rs.getString("pricesid");
                	String hotelName=rs.getString("hotelname");
                	String packageName = rs.getString("packagename");
                    String transportmode = rs.getString("transportmode");
                    String duration = rs.getString("duration");
                    double price = rs.getDouble("price");
        %>
            <tr>
            	<td><%= packageName %></td>
            	<td><%= hotelName %></td>
                <td><%= transportmode %></td>
                <td><%= duration %></td>
                <td><%= price %></td>
                <td>
                    <form action="book.jsp" method="post"> <!-- Form for booking -->
                        <input type="hidden" name="pricesid" value="<%= pricesid %>"> <!-- Hidden input field to store packageId -->
                        <input type="submit" value="Book Now">
                    </form>
                </td>
            </tr>
        <% 
                }
                // Close resources
                rs.close();
                stmt.close();
                conn.close();
              
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>