<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book or display</title>
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
<h2>Booking Options</h2>
    <form action="BookingOptionServlet" method="post">
    	<label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <input type="radio" id="newBooking" name="bookingOption" value="new" checked>
        <label for="newBooking">New Booking</label><br>
        
        <input type="radio" id="showPastBookings" name="bookingOption" value="showPast">
        <label for="showPastBookings">Show Past Bookings</label><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>