<?php
require '../config.php';
if (isset($_POST['edited'])) {

    $collegename = $_POST["collegename"];
    $overall = $_POST["overall"];
    $performance = $_POST["performance"];
    $facilities = $_POST["facilities"];
    $price = $_POST["price"];
    $academic = $_POST["academic"];
    $college_description = $_POST["college_description"];
    $id = $_POST["id"];

  if (!empty($collegename) && !empty($overall) && !empty($performance) && !empty($facilities) && !empty($price) && !empty($academic)) {
    $query = "UPDATE colleges SET name = '$collegename', overall='$overall', teachingperformance='$performance',
      facilities='$facilities', price='$price', academicreputation='$academic', college_description='$college_description' WHERE college_id='$id'";
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
  echo '<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">';
  echo '</head>';
  echo '<body>';
  echo '<div class="main-container">';
  echo '<h1>Edit College</h1>';


  echo '<form id="edit-form" action = "edit-college.php" method="POST">';
  echo '<input type="hidden" name="id" value="' . $results["college_id"] . '" />';
  echo '<label for="collegename">College Name: </label>';
  echo '<input type="text" name="collegename" id="collegename" value="' . $results["name"] . '"/>';
  echo '<h2>Ratings</h2>';
  echo '<label for="overall">Overall: </label>';
  echo '<select name="overall" id="overall" value="' . $results["overall"] . '">';
  for ($i = 1; $i < 11; $i++) {
    if ($i == $results["overall"]) {
      echo '<option selected>' . $i . '</option>';
    } else {
      echo '<option>' . $i . '</option>';
    }
  }
  echo '</select>';
  echo '<label for="performance">Performance: </label>';
  echo '<select name="performance" id="performance">';
  for ($i = 1; $i < 11; $i++) {
    if ($i == $results["teachingperformance"]) {
      echo '<option selected>' . $i . '</option>';
    } else {
      echo '<option>' . $i . '</option>';
    }
  }
  echo '</select>';
  echo '<label for="facilities">Facilities: </label>';
  echo '<select name="facilities" id = "facilities">';
  for ($i = 1; $i < 11; $i++) {
    if ($i == $results["facilities"]) {
      echo '<option selected>' . $i . '</option>';
    } else {
      echo '<option>' . $i . '</option>';
    }
  }
  echo '</select>';
  echo '<label for="price">Price: </label>';
  echo '<select name="price">';
  for ($i = 1; $i < 11; $i++) {
    if ($i == $results["price"]) {
      echo '<option selected>' . $i . '</option>';
    } else {
      echo '<option>' . $i . '</option>';
    }
  }
  echo '</select>';
  echo '<label for="academic">Academic: </label>';
  echo '<select name="academic" id="academic">';
  for ($i = 1; $i < 11; $i++) {
    if ($i == $results["academicreputation"]) {
      echo '<option selected>' . $i . '</option>';
    } else {
      echo '<option>' . $i . '</option>';
    }
  }
  echo '</select>';
  echo '<br/>';
  echo '<br/>';
  echo '<textarea rows="4" cols="50" name="college_description" id="college_description" form="edit-form" placeholder="Description"></textarea>';

  echo '<br/>';
  echo '<br/>';
  echo '<br/>';
  echo '<input class="add-button" type="submit" name="submit" value="Save Changes"/>';
  echo '<input type=\'hidden\' name=\'edited\' value=\'true\'/>';
  echo '</form>';
  echo '</div>';
  echo '</body>';
  echo '</html>';
}
