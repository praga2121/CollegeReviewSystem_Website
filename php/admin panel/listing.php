<?php
require '../config.php';
include '../support elements/admin-nav.php';
/** @var TYPE_NAME $conn */
$sql = "SELECT * FROM college_website.colleges";
$result = mysqli_query($conn, $sql);
$resultsCheck = mysqli_num_rows($result);
if (isset($_POST['added'])) {
    $collegename = $_POST["collegename"];
    $overall = $_POST["overall"];
    $college_description = $_POST["college_description"];
  if (!empty($collegename) && !empty($overall) && !empty($college_description)) {
    $query = "INSERT INTO colleges (name, overall, teachingperformance, facilities, price, academicreputation, college_description) VALUES ('$collegename', '$overall', 
    '$performance', '$facilities', '$price', '$academic', '$college_description')";
    if (@mysqli_query($conn, $query)) {
      print "Records added successfully";
    } else {
      print mysqli_error($conn);
    }
  }
} else {
  echo '<link rel="preconnect" href="https://fonts.gstatic.com"><link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">';
  echo '<link rel="stylesheet" href="../../css/style-admin.css">';
  echo '<title>College Listings | Admin Panel</title>';
  echo '</head>';
  echo '<body>';
  echo '<div class="main-container">';
  echo '<h1 align="center">Admin Dashboard</h1>';
  echo '<a class = "add-button" href="add-college.php" >Add College</a>';
  echo '<table class="listing" width="500">';
  echo '<tr>';
  echo '<th>Name</th>';
  echo '<th colspan="2">Action</th>';
  echo '</tr>';
  if ($resultsCheck > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
    ?>
      <td><?= $row['name'] ?></td>
      <td>
        <div>
          <a class='edit-button' href='edit-college.php?id=<?= $row['college_id']?>'>Edit</a>
          <a 
            class='delete-button' 
            href='delete-college.php?id=<?= $row['college_id']?>'
            onClick="return confirm('Are you sure you want to delete this item');">
            Delete
          </a>
        </div>
      </td>
    </tr>
    <?php
    }
  }
  ?>
  </table>
  </div>
  </body>
  </html>
  <?php
}
?>
