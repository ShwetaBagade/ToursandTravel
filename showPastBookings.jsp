<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your bookings</title>
<style>
	body {
	  background-image: url('tablebg.png');
    background-size: cover;
    margin: 0;
    padding: 0;
    background-color: rgba(255, 255, 255, 0.1);
	}
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
<body>
<table border="1" class=center>
        <tr>
	        <th>Booking id</th>
	        <th>Package Name</th>
	        <th>Hotel Name</th>
	        <th>Destination</th>
	        <th>Booking date</th>
        	<th>Duration</th>
            <th>No. of people</th>
            <th>Mode of Transport</th>
            <th>Mode of Payment</th>
            <th>Price</th>
        </tr>
        <% 
            String email = request.getParameter("email");
            try {
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mproject", "root", "shweta");
                // Create SQL statement to select tour packages for the specified destination
                String sql2="Select custid from customer where email=?";
                PreparedStatement stmt2=conn.prepareStatement(sql2);
                	stmt2.setString(1,email);
                	ResultSet rs2=stmt2.executeQuery();
                	String custid="";
                	while(rs2.next()){
                		 custid=rs2.getString("custid");
                	}
                	
                String sql = ("SELECT b.bookingid,k.packagename, h.hotelname,h.destination,b.bookingdate,p.duration, b.headcount,p.transportmode,b.paymode ,p.price FROM bookings b,bookingdetails d,prices p ,packages k, hotels h WHERE b.bookingid=d.bookingid and d.pricesid=p.pricesid and p.packageid=k.packageid and p.hotelid = h.hotelid and custid= ?");
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, custid);
                ResultSet rs = stmt.executeQuery();
                // Iterate over the result set and display tour package details
                while (rs.next()) {                	
                	String bookingid=rs.getString("bookingid");
                	String packageName = rs.getString("packagename");
                	String hotelName = rs.getString("hotelname");
                	String destination = rs.getString("destination");
                	String bookDate = rs.getString("bookingdate");
                	String duration = rs.getString("duration");
                	int headCount=rs.getInt("headcount");
                    String transportmode = rs.getString("transportmode");
                    String paymentmode = rs.getString("paymode");
                    double price = rs.getDouble("price");
        %>
            <tr>
	            <td><%= bookingid %></td>
	            <td><%= packageName %></td>
	            <td><%= hotelName %></td>
	            <td><%= destination %></td>
	            <td><%= bookDate %></td>
            	<td><%= duration %></td>
                <td><%= headCount %></td>
                <td><%= transportmode %></td>
                <td><%= paymentmode %></td>
                <td><%= price %></td>
            </tr>
        <% 
                }
                // Close resources
                //rs.close();
                //stmt.close();
                //conn.close();
              
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>