<?php

$connection = oci_connect("x6o26", "Nissan86.")) ;

if(isset($_POST['send']){ 
    $name = $_POST['name'];
    $Guest_no = $_POST['Guest_no'];
    $location = $_POST['location'];
    $checkin = $_POST['checkin'];
    $checkout = $_POST['checkout'];
    $buffet_option = $_POST['buffet_option'];

    $request = "insert into book_form(name, Guest_no, location, checkin,checkout, buffet_option) values ('$name','$Guest_no','$location', '$checkin','$checkout','$buffet_option')";

oci_connect($connection, $request);

 header('location:book_now.php');

}else{
    echo"something went wrong";
}

?>