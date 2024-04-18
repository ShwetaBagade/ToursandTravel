<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
    body {
        background-image: url('m.png');
        background-size: cover;
        background-position: center;
        margin: 0; /* Reset default body margin */
        padding: 0; /* Reset default body padding */
    }

    .form-container {
        background-color: rgba(255, 255, 255, 0.8); /* White background with 80% opacity */
        padding: 20px;
        border-radius: 10px;
        width: 300px;
        margin: 50px auto; /* Center the form horizontally */
    }

    /* Style your form elements as needed */
    input[type="text"],
    input[type="email"],
    input[type="tel"],
    textarea,
    button {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    button {
        background-color: #007bff;
        color: #fff;
        border: none;
        cursor: pointer;
    }

    button:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>
<div class="form-container">
        <form action="LoginServlet" method="post">
            <input type="text" name="name" placeholder="Your Name">
            <input type="email" name="email" placeholder="Your Email">
	        <input type="tel" name="phone_number" placeholder="Phone Number">
            <textarea name="address" placeholder="Your Address"></textarea>
            <button type="submit">Login</button>
        </form>
    </div>

</body>
</html>