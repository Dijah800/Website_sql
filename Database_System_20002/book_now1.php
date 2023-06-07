<!doctype html>
<head>
    <title>Ease Ltd</title>
    
    <link rel="stylesheet" href="book.css">
    
</head>
<body>

      <div class ="nav_bar">
         <div class="icon">Ease Ltd</div> 
         <a href="#" class="toggle-button">
         
        <span class="bar"></span>
        <span class="bar"></span>
        <span class="bar"></span>
        
</a>
     
        <div class="menu">
             <ul>
                <li><a href="index.php">Home</a></li>
                 <li><a href="roomie.php">Book now</a></li>  
				 <li><a href="datadisplay.php">View Sql Database</a></li>    
                  
                 
             </ul>
        </div>

</div>

	<h1>Hotel Booking Form</h1>

	<div class="container">
		<form action="submit.php" method="post">
			<label for="name">Name:</label>
			<input type="text" id="name" name="name" placeholder="Enter your name" required>

			<label for="Guest_no">Number of Guest:</label>
			<input type="number" id="Guest_no" name="Guest_no" placeholder="Enter Number of Guest" required>

			
			<label for="location_option">Location Option:</label>
			<select id="location_option" name="location_option" required>
				<option value="">Select preferred Location</option>
				<option value="birmingham">Birmingham</option>
				<option value="london">London</option>
				<option value="cardiff">Cardiff</option>
				<option value="stoke on trent">Stoke on Trent</option>
				<option value="manchester">Manchester</option>
				
			</select>

			<label for="checkin">Check-In Date:</label>
			<input type="date" id="checkin" name="checkin" required>

			<label for="checkout">Check-Out Date:</label>
			<input type="date" id="checkout" name="checkout" required>

			<label for="buffet_option">Decor Option:</label>
			<select id="buffet_option" name="buffet_option" required>
				<option value="">Do  you want add decoration to booking</option>
				<option value="yes">Yes</option>
				<option value="no">No</option>
				
			</select>

			<input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>

</body>
</html>