<?php
require '../config.php';

include '../support elements/admin-nav.php';

if (isset($_POST['added'])) {
    $collegename = $_POST["collegename"];
    $college_description = $_POST["college_description"];


  if (!empty($collegename)) {
    $query = "INSERT INTO 
    colleges (name) 
    VALUES ('$collegename')";

    if (@mysqli_query($conn, $query)) {
      echo '<!DOCUMENT html>';
      echo '<html>';
      echo '<head>';
      echo '<title>Success | Admin Panel</title>';
      echo '<link rel="stylesheet" href="../resources/style-admin.css">';
      echo '<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">';
      echo '</head>';
      echo '<body>';
      echo '<div class="main-container">';
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

  ?>
  
  <!DOCUMENT html>
  <html>

    <head>
    	<title>Add College | Admin Panel</title>
    	<link rel="stylesheet" href="../../css/style-admin.css" />
    	<link rel="preconnect" href="https://fonts.gstatic.com" />
    	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat%26display=swap" /> 
    </head>

    <body>
    	<div class="main-container">
    		<h1 align="center">New College</h1>
    		<div class="form-center">
    			<form action="admin.php" method="POST">
    				<label for="collegename">College Name: </label>
    				<input type="text" name="collegename" id="collegename" />
    				<br/>
    				<br/>
    				<textarea rows="4" cols="50" name="college_description" id="college_description" form="edit-form" placeholder="Description"></textarea>
    				<br/>
    				<br/>
    				<select name="subject"> </select>
    				<br/>
            <select name="subject">
            <?php foreach ($subjects as $subject) : ?>
              <option value="<?=$subject["subject_id"]?>"><?= $subject["name"] ?></option>
            <?php endforeach ?>
            </select> 
            <input class="edit-button" type="submit" name="submit" value="Add college" />
    				<input type='hidden' name='added' value='true' /> </form>
    		</div>
    	</div>
    </body>

</html>
  <?php
}
?>
