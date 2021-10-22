<?php
require '../config.php';

include '../support elements/admin-nav.php';

try {
    $pdo = new PDO('mysql:host=' . $dbServername . ';dbname=' . $dbName . ';charset=utf8', $dbUsername);
  } catch (PDOException $exception) {
    // If there is an error with the connection, stop the script and display the error.
    exit('Failed to connect to database!');
  }

if (isset($_POST['added'])) {
    $college_name = $_POST["name"];
    $website_link = $_POST["websitelink"];
    $college_description = $_POST["description"];
    $subjects = $_POST["subject"];
    $subjects = array_values(array_filter($subjects, 'array_filter'));

  if (!empty($college_name)) {
    $query_college = "INSERT INTO colleges 
                      (name, college_description) 
                      VALUES (
                        '$college_name', '$college_description'
                      )";
    $query_subjects = "INSERT INTO collegesandsubjects 
                      (college_id, subject_id, price)
                      VALUES (
                        (SELECT college_id 
                          FROM colleges 
                          WHERE name='$college_name' 
                          LIMIT 1), 
                        ?, 
                        ?
                      )";
    $stmt_college = $pdo->prepare($query_college);
    $stmt_college->execute();

    $stmt_subject = $pdo->prepare($query_subjects);
    // subjects query loop can instead be done as one combined string insert where concatenate each insert subject query into one string and then ->query() it
    foreach ($subjects as $subject) {
      $stmt_subject->execute(array(
        $subject["name"],
        $subject["price"]
        )
      ); 
     }
     

    if (/*@mysqli_query($conn, $query)*/ true) {
      echo '<!DOCUMENT html>';
      echo '<html>';
      echo '<head>';
      echo '<title>Success | Admin Panel</title>';
      echo '<link rel="stylesheet" href="../resources/style-admin.css">';
      
      echo '</head>';
      echo '<body>';
      echo '<div class="main-container">';
      echo '<h1>Database Updated Successfully</h1>';
      
      print_r($subjects);
      print($subjects[1]["name"]);
      print($subjects[1]["price"]);
      echo '<a href = "listing.php">Back to college listings</a>';
      echo '</div>';
      echo '</body>';
      echo '</html>';
    } else {
      print mysqli_error($conn);
    }
  }
} else {
  $query_select_subject = "SELECT * FROM college_website.subjects";

  $subjects = $pdo->query($query_select_subject)->fetchAll();
  
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
    			<form action="add-college.php" method="POST">
    				<label for="name">College Name: </label>
    				<input type="text" name="name" id="name" />
    				<br/>
    				<br/>
            <label for="websitelink">Website Link: </label>
    				<input type="text" name="websitelink" id="websitelink" />
    				<br/>
    				<br/>
    				<textarea rows="4" cols="50" name="description" id="description" placeholder="Description"></textarea>
    				<br/>
    				<br/>
    				<br/>
            
            <div style="display: flex; flex-direction: column;">
            <?php 
            $increment = 0;
            foreach ($subjects as $subject) : ?>
              <div>
                <!-- input's name has '[]' in the end to signify that post will be a 2 dimensional array where items are grouped by subject_id and have -->
                <input type="checkbox" name="subject[<?= $increment?>][name]" value="<?= $subject["subject_id"]?>" >
                <label for="subjects"><?= $subject["name"] ?></label>

                <input type="number" name="subject[<?= $increment?>][price]" step="100">
              </div>
            <?php
            $increment = $increment + 1; 
            endforeach ?>
            </div>

            <input class="edit-button" type="submit" name="submit" value="Add college" />
    				<input type='hidden' name='added' value='true' /> 
          </form>
    		</div>
    	</div>
    </body>

</html>
  <?php
}
?>