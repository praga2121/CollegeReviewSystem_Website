<?php
//require '../support elements/header.php';
require '../config.php';

$college_name = $_GET['college_name'];

$sql = 'SELECT college_id, name, college_description FROM college_website.colleges WHERE name="'.$college_name.'"';
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

$college_id = $row['college_id'];
?>

<!DOCUMENT html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CollegeReport</title>
<link rel="stylesheet" href="../../css/style-main.css"/>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
<link href="../../css/reviews.css" rel="stylesheet" type="text/css">

<link rel="preconnect" href="https://fonts.gstatic.com"><link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
</head>
<?php
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
// Map with Location
// ISSUE FOUND: if google will provides more than one location with entered name, no result will be displayed on the map
// TO Change ZOOM: increrase `z` value by 1 to zoom further in or decrease by one to zoom further out. 
echo '<div style="width: 100%">
    <iframe 
        scrolling="no" 
        marginheight="0" 
        marginwidth="0" 
        src="https://maps.google.com/maps?width=100%25&amp;height=500&amp;hl=en&amp;q=+('.$row["name"].'Disted%20College)&amp;t=p&amp;z=15&amp;ie=UTF8&amp;iwloc=B&amp;output=embed" 
        width="100%" 
        height="600" 
        frameborder="0">
    </iframe>
</div>';

//echo '<div class="w3-row-padding w3-center w3-padding-64" id="pricing">';
echo '<div class="subject-container">';
echo '<h2 class="subject-header">Subjects</h2>';

$sql_subject = 
"SELECT `subjects`.`name`,`subjects`.`price` 
FROM `collegesandsubjects` 
LEFT JOIN `subjects` ON `collegesandsubjects`.`subject_id` = `subjects`.`subject_id` 
WHERE `collegesandsubjects`.`college_id` = '1' AND `subjects`.`subject_id` = `collegesandsubjects`.`subject_id` 
";
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
        echo '</table>';
    }
}
?>
</div>
</div>
<div class="w3-container w3-padding-64 w3-theme-l5 w3-center" id="contact">
  <div class="w3-padding-16"></div>
</main>

<div class="content home">
		<h2>Reviews</h2>
		<p>Check out the below reviews for this college.</p>
		<div class="reviews"></div>


		<script>
		const college_id = <?= $college_id?>;
        console.log(college_id);

		fetch("../review/reviews.php?college_id=" + college_id).then(response => response.text()).then(data => {
			document.querySelector(".reviews").innerHTML = data;
			document.querySelector(".reviews .write_review_btn").onclick = event => {
				event.preventDefault();
				document.querySelector(".reviews .write_review").style.display = 'block';
				document.querySelector(".reviews .write_review input[name='name']").focus();
			};
			document.querySelector(".reviews .write_review form").onsubmit = event => {
				event.preventDefault();
				fetch("../review/reviews.php?college_id=" + college_id, {
					method: 'POST',
					body: new FormData(document.querySelector(".reviews .write_review form"))
				}).then(response => response.text()).then(data => {
					document.querySelector(".reviews .write_review").innerHTML = data;
				});
			};
		});
		</script>
	</div>

<?php include '../support elements/footer.php'; ?>

<script></script>>
</div>
</div>
