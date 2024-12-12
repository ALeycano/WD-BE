<?php
include('connect.php');

$sql_islands = "SELECT * FROM islandsofpersonality";
$result_islands = executeQuery($sql_islands);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Islands of Personalities</title>
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="icon" href="assets/img/icn.png">
</head>

<body>

  <nav class="w3-top">
    <div class="w3-bar w3-red w3-card w3-large">
      <a class="w3-bar-item w3-button w3-padding-large w3-white" href="../">Home</a>
    </div>
  </nav>

  <header class="header-container">
    <h1>Welcome to my Islands</h1>
    <p>Discover the Islands that Shape Aldin's Personality</p>
  </header>

  <section class="portfolio-section">
    <?php
    $counter = 0;
    if (mysqli_num_rows($result_islands) > 0) {
      while ($island = mysqli_fetch_assoc($result_islands)) {
        $islandID = $island['islandOfPersonalityID'];
        $alignmentClass = ($island['name'] == "Island of Games" || $island['name'] == "Island of Delicacies") ? 'right-align' : 'left-align';
        $bgColorClass = 'island-bg-' . $counter;
        $counter++;
        echo "<div class='island-div $bgColorClass $alignmentClass'>";
        echo "<div class='island-content'>";
        echo "<h2>{$island['name']}</h2>";
        echo "<p>{$island['shortDescription']}</p>";
        echo "<a href='view.php?id={$islandID}'><img src='assets/img/{$island['image']}' alt='{$island['name']} Island' class='island-image'></a>";
        echo "</div>";
        echo "</div>";
      }
    } else {
      echo "<p>No islands found.</p>";
    }
    ?>
  </section>

  <footer class="footer-container">
    <p>Quote of the day: YOLO</p>
    <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
  </footer>

</body>

</html>