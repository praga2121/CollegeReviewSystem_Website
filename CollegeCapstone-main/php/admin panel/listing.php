<?php
require '../config.php';
/** @var TYPE_NAME $conn */

$sql = "SELECT * FROM college_website.colleges";
$result = mysqli_query($conn, $sql);
$resultsCheck = mysqli_num_rows($result);

if (isset($_POST['added'])) {
    $collegename = $_POST["collegename"];
    $overall = $_POST["overall"];
    $performance = $_POST["performance"];
    $facilities = $_POST["facilities"];
    $price = $_POST["price"];
    $academic = $_POST["academic"];
    $college_description = $_POST["college_description"];

  if (!empty($collegename) && !empty($overall) && !empty($performance) && !empty($facilities) && !empty($price) && !empty($academic) && !empty($college_description)) {
    $query = "INSERT INTO colleges (name, overall, teachingperformance, facilities, price, academicreputation, college_description) VALUES ('$collegename', '$overall', '$performance', '$facilities', '$price', '$academic', '$college_description')";
    if (@mysqli_query($conn, $query)) {
      print "Records added successfully";
    } else {
      print mysqli_error($conn);
    }
  }
} else {
  include '../support elements/header.php';
  echo '<link rel="stylesheet" href="../../css/style-admin.css">';
  echo '<title>College Listings | Admin Panel</title>';
  echo '</head>';
  echo '<body>';
  echo '<div class="main-container">';
  echo '<h1>Colleges List</h1>';
  echo '<a class = "add-button" href="admin.php">Add new college</a>';
  echo '<table class="listing" width="500">';
  echo '<tr>';
  echo '<th>Name</th>';
  echo '<th>Action</th>';
  echo '</tr>';
  if ($resultsCheck > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      echo "<tr><td>" . $row['name'] . "</td><td><a href='edit-college.php?id=$row[college_id]'>Edit</a></td></tr>";
      
      //last line
    }
  }
  echo '</table>';
  echo '</div>';
  echo '</body>';
  echo '</html>';
}
