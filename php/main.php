<?php

require 'config.php';
/** @var TYPE_NAME $conn */

$sql = 
"SELECT *  
FROM college_website.colleges 
ORDER BY overall_rating DESC";

//associative array of 'colleges' table
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
echo '<title>CollegeReport</title>';
echo '<link rel="stylesheet" href="../css/style-main.css"/>';
echo '<link rel="preconnect" href="https://fonts.gstatic.com"><link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">';
echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> ';
echo '</head>';
//HEAD-END
//BODY START
echo '<body>';
/* NAV BAR*/
include 'support elements/nav_wide.php';
/* NAV BAR-END*/

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
echo '<th>College Name</th>';
echo '<th>Overall Rating</th>';
echo '</tr>';
echo '</thead>';
/* TABLE HEADING - ENDs*/
echo '<tbody>';

if ($resultsCheck > 0) {
  while ($row = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td><a class =\"table-row-link\" href=\"individual%20page/university.php?college_name=" . $row['name'] ."\"> " . $row['name'] . "</a></td>";
    echo "<td>" . $row['overall_rating'] . "</td>";
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

<!-- Tile Scheme
<div class="tiles_wrapper">
  <div class="tile">
    <div class="left_side">
      <div class="title"></div>
      <div class="description"></div>
      <div class="review_banner"></div>
    </div>
    <div class="right_side">
      <div class="image_banner"></div>
      <div class="rating_banner"></div>
    </div>
    <div class="bottom_banner">
      <div class="words_near_link">
        <a href="" class="college_url"></a>
      </div>
    </div>
  </div>
</div>
-->

<script src="../js/tableSorter.js"></script>
<script src="../js/tableSearch.js"> </script>
<script src="../js/checkBoxSelect.js"> </script>
<script src="../js/searchBarToggle.js"></script>

</body>
</html>

