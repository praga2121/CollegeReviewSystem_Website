<?php
//require '../support elements/header.php';
require '../config.php';

$sql = 'SELECT college_id, name, college_description FROM college_website.colleges WHERE name="KDU College"';
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

echo '<!DOCUMENT html>';
echo '<html>';
echo '<head>';
echo '<meta charset="UTF-8">';
echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">';
echo '<title>ReviewMyCollege</title>';
echo '<link rel="stylesheet" href="../../css/style-main.css"/>';
echo '<link rel="preconnect" href="https://fonts.gstatic.com"><link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">';

echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> ';
echo '</head>';
include '../support elements/nav_wide.php';

echo '<div class="featured-container-colleges" style="background-image: url(\'../../images/' . $row["name"] . '.jpg\')">';
echo ' <div class="overlay">';
echo '<h1 style="padding-top: 250px; padding-bottom: 250px; color: #FFFFFF;">' . $row["name"] . '</h1>';
echo '  </div>';
echo '</div>';
echo '<main>';
echo '<h2 class="subject-header">Description</h2>';
echo '       <p class="college-description">' . $row["college_description"] . '</p>';
echo '<h2 class="subject-header">Location</h2>';
echo'<div style="width: 100%"><iframe width="100%" height="600" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=kdu%20college+(My%20Business%20Name)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://www.maps.ie/draw-radius-circle-map/">Circle area map</a></div>';

//echo '<div class="w3-row-padding w3-center w3-padding-64" id="pricing">';
echo '<div class="subject-container">';
echo '<h2 class="subject-header">Subjects</h2>';
$sql_subject = "SELECT `subjects`.`name`,`subjects`.`price`,`subjects`.`duration`,`subjects`.`internship_duration` FROM `collegesandsubjects` LEFT JOIN `subjects` ON `collegesandsubjects`.`subject_id` = `subjects`.`subject_id` WHERE `collegesandsubjects`.`college_id` = '1' AND `subjects`.`subject_id` = `collegesandsubjects`.`subject_id` ";
$result_subject = mysqli_query($conn, $sql_subject);
$row_number = mysqli_num_rows($result_subject);
echo '<div class="subject-table-container">';
if ($row_number > 0) {
    while ($row_subject = mysqli_fetch_assoc($result_subject)) {
        echo '<table class="subject-table">';
        echo '<tr>';
        echo '    <th style="width: 40%;background-color: #ebbc3d;">' . $row_subject["name"] . '</th>';
        echo '</tr>';

        echo '<tr>';
        echo '    <td>' . $row_subject["price"] . '</td>';
        echo '</tr>';
        echo '<tr>';
        echo '    <td>' . $row_subject["duration"] . '</td>';
        echo '</tr>';
        echo '<tr>';
        echo '    <td>' . $row_subject["internship_duration"] . '</td>';
        echo '</tr>';
        echo '</table>';
    }
}
echo '</div>';
echo '</div>';
echo '<div class="w3-container w3-padding-64 w3-theme-l5 w3-center" id="contact">';
echo '  <div class="w3-padding-16"></div>';
echo '</main>';
/*
if ($row_number > 0) {

    while ($row_subject = mysqli_fetch_assoc($result_subject)) {

    }
}*/

echo '<script></script>>';
echo ' </div>';
echo '</div>';
