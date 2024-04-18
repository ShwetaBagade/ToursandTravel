<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select according to Destination/Package</title>
<style>
	body{
		margin:0;
		padding:0;
		background-image:url('bg4.png');
		background-size:cover;
		background-position:center;
		background-attachment:fixed;		
		}
	.content{
		margin:20px;
		}
    .image-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
    }
    .image-container img {
        width: 280px;
        height: auto;
        margin: 10px;
        cursor: pointer;
    }
</style>
</head>
<body>
<h1 align=center>Destinations</h1><br>
    <div class="image-container">    
        <a href="ToursServlet?destination=Goa"><img src="image1.png" alt="Goa"></a>
        <a href="ToursServlet?destination=Rajasthan"><img src="image2.png" alt="Rajasthan"></a>
        <a href="ToursServlet?destination=Shimla"><img src="image3.png" alt="Shimla"></a>
        <a href="ToursServlet?destination=Kerala"><img src="image4.png" alt="Kerala"></a>
        <a href="ToursServlet?destination=Singapore"><img src="image5.png" alt="Singapore"></a>
        <a href="ToursServlet?destination=Dubai"><img src="image7.png" alt="Dubai"></a>
        <a href="ToursServlet?destination=U.K."><img src="image6.png" alt="U.K"></a>
</div>
<h1 align=center>Packages</h1><br>
<div class="image-container">
        <a href="Tours2Servlet?packagename=Family"><img src="P01.png" alt="Family"></a>
        <a href="Tours2Servlet?packagename=Women"><img src="P02.png" alt="Women"></a>
        <a href="Tours2Servlet?packagename=Senior"><img src="P03.png" alt="Senior Citizen"></a>
        <a href="Tours2Servlet?packagename=Corporate"><img src="P04.png" alt="Corporate"></a>
        <a href="Tours2Servlet?packagename=Student"><img src="P05.png" alt="Student"></a>
    </div>
</body>
</html>