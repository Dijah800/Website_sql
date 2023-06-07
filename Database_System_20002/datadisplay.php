<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<link rel="stylesheet" href="./style.css">

</head>

<body>
    <div class="navBar">
     <h1 style="text-align:center;">EASE LTD DATABASE</h1>  
    </div>

    <br>
    <br>

  <h2> <label for="tables"> Please select tables you wish to view from the Option list and click the submit button: </label>  </h2>

  <br>

  <form action="" method ='POST'>
  <select name="tables" id="tables">
  <option value="Branch">Branch</option>
  <option value="EMPLOYEE">Employee</option>
  <option value="Room">Room</option>
  <option value="SUPPLIER">Supplier</option>
  <option value="Product">Product</option>
  <option value="CUSTOMER">Customers</option>
  <option value="Booking">Booking</option>
  <option value="Account">Account</option>
  <option value="Standard_Room">Standard_Room</option>
  <option value="Executive_Room">Executive_Room</option>
  </select>

  <input type="Submit" name="button" value="Submit">

</form>


 <?php
//Program to read the contents of ITEM and display them in a table
if(isset($_POST['tables']))
if ($Connection = oci_connect("x6o26", "Nissan86."))
{

$sql = "select * from ".$_POST['tables']." ";

$Statement = oci_parse($Connection, $sql);
// Execute Oracle query
oci_execute($Statement);

$numcols = oci_num_fields($Statement);
print "<table width=800 border=1><tr>";
for ($i=1; $i<=$numcols; $i++)
{
// Print column headings
 $colname = oci_field_name($Statement, $i);
 print "<td>$colname</td>";
}
 print "</tr>";
// Get a row and print it column by column
while (oci_fetch($Statement))
{
 print "<tr>";
 for ($i=1; $i<=$numcols; $i++)
{
 $col = oci_result($Statement, $i);
 PRINT "<td>$col</td>";
 }
print "</tr>";
}
print "</table>";
$numrows = oci_num_rows($Statement);

oci_close($Connection);
 }
else
 {
var_dump(oci_error($Connection));
 } // end of if expression
?>


</body>
</html>
