<?php

require 'config.php';
/** @var TYPE_NAME $conn */

$sql = 
"SELECT *  
FROM college_website.colleges 
ORDER BY overall DESC";

//associative array of "colleges' table
$result = mysqli_query($conn, $sql);
//number of row in "colleges" table
$resultsCheck = mysqli_num_rows($result);

//START OF THE PAGE
//HEAD
echo '<!DOCUMENT html>';
echo '<html>';
echo '<head>';
echo '<meta charset="UTF-8">';
echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">';
echo '<title>ReviewMyCollege</title>';
echo '<link rel="stylesheet" href="../css/style-main.css"/>';
echo '<link rel="preconnect" href="https://fonts.gstatic.com"><link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">';

echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> ';
echo '</head>';
//HEAD-END
//BODY START
echo '<body>';
/* NAVIGATION BAR*/
include 'support elements/nav_wide.php';
/* NAVIGATION BAR - END*/

/*HEADER PAGE*/
echo '<!--Featured image-->';
echo '<div class="featured-container">';
echo '<div class="overlay">';
echo '<h1 class="top-intro-header">Discover Incredible Colleges</h1>';
echo '</div>';
echo '</div>';
echo '';
/*HEADER PAGE - END*/

/*MAIN PAGE CONTAINER*/
echo '<main>';
echo '<h1 class ="main-container-header">Top Colleges</h1>';

echo '<div class="search">';  
echo '<input type="search" class="search-box" id="searchInput" onkeyup="tableSearch()" placeholder="Search Here" title="Enter a keyword or number">';
echo '<span class="search-button">';
echo '<span class="search-icon"></span>';
echo '</span>';
echo '</div>';


/* TABLE with search and sort function*/
echo '<table id="table-search" class="table-sort">';
/* TABLE HEADINGs*/
echo '<thead>';
echo '<tr>';
echo '<th>Compare</th>';
echo '<th>Name</th>';
echo '<th>Overall</th>';
echo '</tr>';
echo '</thead>';
/* TABLE HEADING - ENDs*/
echo '<tbody>';

if ($resultsCheck > 0) {
  while ($row = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td><label class=\"container\">";
    echo '<input type="checkbox" class="compare-checkbox" id="' . $row['college_id'] . '" name="universityID" value=' . $row['college_id'] . '>';
    echo "<span class=\"checkmark\"></span>";
    echo "</label></td>";
    echo "<td><a class =\"table-row-link\" href=\"individual%20page/university.php?college_name=" . $row['name'] ."\"> " . $row['name'] . "</a></td>";
    echo "<td>" . $row['overall'] . "</td>";
  }
}
echo '</tbody>';
echo '</table>';



/*SEARCH BAR SIMPLE*/
/*
// with search over the table items function
echo '<input type="search" class="searchTerm" id="searchInput" 
onkeyup="tableSearch()" placeholder="Search here" title="Enter a keyword or number">';
*/
/*SEARCH BAR - END*/
echo '</main>';
//include 'review/review_main.php';
/*MAIN PAGE CONTAINER - END*/

/* FOOTER */
include 'support elements/footer.php';
/* FOOTER - END*/
?>

<script src="../js/tableSorter.js"></script>
<script src="../js/tableSearch.js"> </script>
<script src="../js/checkBoxSelect.js"> </script>
<script src="../js/searchBarToggle.js"></script>

</body>
</html>

