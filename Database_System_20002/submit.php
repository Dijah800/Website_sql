<?php
    session_start();
?>
<?php 
if (isset($_POST['room_id'])){ 
    if(is_numeric($_POST['room_id'])){
        $room_id = $_POST['room_id'];

        $userid = $_SESSION['id'];
        $username = $_POST['name'];
        $room_type = $_SESSION['pkg_name'];
        $total_guests = $_POST['guest_no'];
        $perday_price = $_SESSION['pkg_price'];
        $location = $_POST['location'];
        $buffet = $_POST['buffet_option'];
        $checkin = $_POST['checkin'];
        $checkout = $_POST['checkout'];
        
        // Create DateTime objects for check-in and check-out dates
        $checkin_date = new DateTime($checkin);
        $checkout_date = new DateTime($checkout);
        
        // Calculate the difference between the dates
        $duration = $checkout_date->diff($checkin_date);
        
        // Calculate the total price
        $total_days = $duration->days;
        $total_price = $total_days * $perday_price;
        
        $total = $total_price;



        include 'Authenticate.php';
        //create new instance from Customer class
        $customer = new Authenticate(); 
        $customer ->checkout($userid,$username, $room_id,$room_type, $total_guests, $total,$perday_price,$location,$buffet, $checkin, $checkout);
    }else{
        ?>
        <script>
            location.replace('../index.php');
        </script> 
        <?php
    }
 }else{
    ?>
    <script>
        location.replace('../index.php');
    </script> 
    <?php
}
?>