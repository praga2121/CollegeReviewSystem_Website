<?php
/*
 * Displays comparison between characteristics of the selected universities.
 * ------------------------------------------------------------------------
 * 1. Gets values of the checked rows(in out current program, values = id).
 * 2. Puts those values into array.
 * 3. Loops through array and creates queries to get rows corresponding to the id
 * 4. Display Rows in the vertical table
 *///
require  'config.php';
if(isset($_POST['universityId'])) {
    $universityID = $_POST['universityId'];

    foreach ($universityID as $item){
        $query = "SELECT * FROM college_website.colleges, college_website.reviews WHERE colleges.id='$item' AND colleges.review_id = reviews.id";
        $result = mysqli_query($query) or die(mysqli_error());
        while($row = mysqli_fetch_array($result)){
            echo $row;
            echo "<br />";
        }
/*
 * SELECT *
 * FROM college_website.colleges, college_website.reviews
 * WHERE colleges.id='$item'
 * */
    }
    echo "You chose the following color(s): <br>";
    foreach ($universityID as $color){
        echo $color."<br />";
    }}

else {
    echo "None of the universities got checked";

}

?>