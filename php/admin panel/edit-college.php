<?php
require '../config.php';
include '../support elements/admin-nav.php';

function isValueInKeyOfArray($array, $key, $val) {
    foreach ($array as $item)
        if (isset($item[$key]) && $item[$key] == $val)
            return true;
    return false;
}

function array_filter_recursive($input){
    foreach ($input as &$value){
        if (is_array($value)){
            $value = array_filter_recursive($value);
        }
    }
    return array_filter($input);
}

try {
    $pdo = new PDO('mysql:host=' . $dbServername . ';dbname=' . $dbName . ';charset=utf8', $dbUsername);
  } catch (PDOException $exception) {
    // If there is an error with the connection, stop the script and display the error.
    exit('Failed to connect to database!');
  }

if (isset($_POST['edited'])) {
    $collegename = $_POST["collegename"];
    $college_description = $_POST["college_description"];
    $id = $_POST["id"];
    $url =  $_POST["websitelink"];
    $subjects = $_POST["subject"];
    $subjects = array_values(array_filter($subjects, 'array_filter'));
    $subjects = array_filter_recursive($subjects);

    $stmt_edit_college = $pdo->prepare("UPDATE colleges 
              SET name = :collegename, 
                  college_description = :college_description, 
                  url = :url
              WHERE college_id=:id");
    $stmt_edit_college->bindParam(':collegename', $collegename);
    $stmt_edit_college->bindParam(':college_description', $college_description);
    $stmt_edit_college->bindParam(':url', $url);
    $stmt_edit_college->bindParam(':id', $id);
    $stmt_edit_college->execute();
    
    $stmt_delete = $pdo->prepare("DELETE  FROM collegesandsubjects WHERE college_id = :id");
    $stmt_delete->bindParam(':id', $id);
    $stmt_delete->execute();

    $stmt_subject = $pdo->prepare("INSERT INTO collegesandsubjects 
                      (college_id, subject_id, price, duration)
                      VALUES (
                        ?, 
                        ?, 
                        ?,
                        ?
                      )");
    // subjects query loop can instead be done as one combined string insert where concatenate each insert subject query into one string and then ->query() it
    foreach ($subjects as $subject) {
      $stmt_subject->execute(array(
        $id,
        $subject["name"],
        $subject["price"],
        $subject["duration"]
        )
      );
    }

    if ($stmt_edit_college && $stmt_subject) {

      echo '<!DOCUMENT html>';
      echo '<html>';
      echo '<head>';
      echo '<title>Edit | Admin Panel</title>';
      echo '<link rel="stylesheet" href="../../css/style-admin.css">';
      echo '<link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">';
      echo '</head>';
      echo '<body>';
      //print_r($subjects);
      echo '<div id="main-container">';
      echo '<h1>Database Updated Successfully</h1>';
      echo '<a style="color:black" href = "listing.php">Back to college listings</a>';
      echo '</div>';
      echo '</body>';
      echo '</html>';
    } else {
      print mysqli_error($conn);
    }
  
} else {
  $id = $_REQUEST['id'];
  $sql_college = "SELECT * FROM colleges WHERE college_id = '" . $id . "'";
  $result = mysqli_query($conn, $sql_college);
  $results = mysqli_fetch_assoc($result);

  $query_select_all_subject = "SELECT * FROM college_website.subjects";
  $subjects = $pdo->query($query_select_all_subject)->fetchAll();

  $college_subjects = $pdo->query("SELECT `subjects`.`name`, `collegesandsubjects`.`price` , `duration`
    FROM `collegesandsubjects` 
    LEFT JOIN `subjects` 
      ON `collegesandsubjects`.`subject_id` = `subjects`.`subject_id` 
    WHERE `collegesandsubjects`.`college_id` = '.$id.' 
      AND `subjects`.`subject_id` = `collegesandsubjects`.`subject_id`")->fetchAll(PDO::FETCH_ASSOC);
  ?>
  <!DOCUMENT html>
  <html>
  <head>
  <title>Edit | Admin Panel</title>
  <link rel="stylesheet" href="../../css/style-admin.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>
  <body>
    <div class="main-container">
      <h1 align="center">Edit College</h1>
      <div class="form-center">
        <form id="edit-form" action = "edit-college.php" method="POST">
          <input 
            type="hidden" 
            name="id" 
            value="<?=$results["college_id"]?>" 
          />
          
          <label 
            for="collegename">
            College Name: 
          </label>
          
          <input 
            type="text" 
            name="collegename" 
            id="collegename" 
            value="<?= $results["name"]?>"
          />
          <br/>
          <br/>
          <label 
            for="websitelink">
            Website Link: 
          </label>
    			<input 
            type="text" 
            name="websitelink" 
            id="websitelink" 
            value="<?=$results["url"]?>"
          />
    			<br/>
    			<br/>
          <textarea 
            rows="4"
            cols="104" 
            name="college_description" 
            id="college_description" 
            form="edit-form" 
            placeholder=""><?=$results["college_description"] ?>
          </textarea>
          <br/>
          <br/>
          <div style="display: flex; flex-direction: column;">
            <?php 
            $increment = 0;
            $i = 0;
            $j = 0;
            foreach ($subjects as $subject) : ?>
              <div>
                <!-- input's name has '[]' in the end to signify that post will be a 2 dimensional array where items are grouped by subject_id and have -->
                <!-- if(in_array(subject["name"], $college_subjects )-->
                <input 
                  type="checkbox" 
                  name="subject[<?= $increment?>][name]" 
                  value="<?= $subject["subject_id"]?>" 
                  <?php echo (isValueInKeyOfArray($college_subjects, "name", $subject["name"]) ? 'checked' : '');?>
                />
                <label
                  class="price-label"for="subjects"><?= $subject["name"] ?>
                </label>

                <input 
                  type="number" 
                  name="subject[<?= $increment?>][price]" 
                  min="1"
                  placeholder="Enter Price"
                  <?php echo (isValueInKeyOfArray($college_subjects, "name", $subject["name"]) ? "value={$college_subjects[$i++]['price']}" : " disabled");?>
                />

                <input 
                  type="number" 
                  name="subject[<?= $increment?>][duration]" 
                  min="1" 
                  step="0.1"
                  placeholder="Enter Duration"
                  <?php echo (isValueInKeyOfArray($college_subjects, "name", $subject["name"]) ? "value={$college_subjects[$j++]['duration']}" : " disabled");?>
                />
              </div>
              
            <?php
            $increment = $increment + 1; 
            endforeach ?>
          </div>
          <br/>

          <input 
            class="save-button" 
            type="submit" 
            name="submit" 
            value="Save Changes"
          />

          <input 
            type='hidden' 
            name='edited' 
            value='true'/>
        </form>
      </div>
    </div>
      <script src="../../js/disableCheckbox.js"></script>
  </body>
  </html>
 <?php 
}
?>
