<?php
require '../config.php';
include '../support elements/admin-nav.php';

if (isset($_POST['edited'])) {

    $collegename = $_POST["collegename"];
    $college_description = $_POST["college_description"];
    $id = $_POST["id"];

  if (!empty($collegename)) {
    $query = "UPDATE colleges 
              SET name = '$collegename' 
              WHERE college_id='$id'";
              
    if (@mysqli_query($conn, $query)) {
      echo '<!DOCUMENT html>';
      echo '<html>';
      echo '<head>';
      echo '<title>Edit | Admin Panel</title>';
      echo '<link rel="stylesheet" href="../resources/style-admin.css">';
      echo '<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">';
      echo '</head>';
      echo '<body>';
      echo '<div id="main-container">';
      echo '<h1>Database Updated Successfully</h1>';
      echo '<a href = "listing.php">Back to college listings</a>';
      echo '</div>';
      echo '</body>';
      echo '</html>';
    } else {
      print mysqli_error($conn);
    }
  }
} else {
  $id = $_REQUEST['id'];
  $sql = "SELECT * FROM colleges WHERE college_id = '" . $id . "'";
  $result = mysqli_query($conn, $sql);
  $results = mysqli_fetch_assoc($result);

  echo '<!DOCUMENT html>';
  echo '<html>';
  echo '<head>';
  echo '<title>Edit | Admin Panel</title>';
  echo '<link rel="stylesheet" href="../../css/style-admin.css">';
  echo '<link rel="preconnect" href="https://fonts.gstatic.com">';
  echo '<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">';
  echo '</head>';
  echo '<body>';
  echo '<div class="main-container">';
  echo '<h1 align="center">Edit College</h1>';
  echo '<div class="form-center">';
  echo '<form id="edit-form" action = "edit-college.php" method="POST">';
  echo '<input type="hidden" name="id" value="' . $results["college_id"] . '" />';
  echo '<label for="collegename" >College Name: </label>';
  echo '<input type="text" name="collegename" id="collegename" value="'. $results["name"].'"/>';
  echo '<br/>';
  echo '<br/>';
  echo '<textarea rows="4" cols="50" name="college_description" id="college_description" form="edit-form" placeholder="'.$results["college_description"].'"></textarea>';
  echo '<br/>';
  echo '<br/>';
  echo '<br/>';
  echo '<input class="save-button" type="submit" name="submit" value="Save Changes"/>';
  echo '<input type=\'hidden\' name=\'edited\' value=\'true\'/>';
  echo '</div>';
  echo '</form>';
  echo '</div>';
  echo '</body>';
  echo '</html>';
}
?>