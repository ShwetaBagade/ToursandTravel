<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookings form</title>
<style>
body {
	  background-image: url('tablebg.png');
    background-size: cover;
    margin: 0;
    padding: 0;
    background-color: rgba(255, 255, 255, 0.1);
	}
	
</style>
</head>

<body>
<%
    // Retrieve the pricesid from the request
    String pricesid = request.getParameter("pricesid");
    // Store the pricesid in session
    session.setAttribute("pricesid", pricesid);
%>
    <h2>Booking Form</h2>
    <form action="BookingServlet" method="post" >
    	<label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
    	
        <label for="bookingDate">Booking Date:</label>
        <input type="date" id="bookingDate" name="bookingDate" required><br><br>
        
        <label for="paymentMode">Payment Mode:</label>
        <select id="paymentMode" name="paymentMode" required>
            <option value="card">Card</option>
            <option value="cheque">Cheque</option>
        </select><br><br>
        
        <label for="headcount">Headcount:</label>
        <input type="number" id="headcount" name="headcount" required><br><br>
        
        
        <input type="submit" value="Submit">
    </form>
    
</body>
</html>