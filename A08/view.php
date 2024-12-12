<?php
include 'connect.php';

$islandId = $_GET['id'];

$islandQuery = "SELECT * FROM islandsofpersonality WHERE islandOfPersonalityID = $islandId";
$islandResult = executeQuery($islandQuery);
$island = $islandResult->fetch_assoc();

$contentQuery = "SELECT * FROM islandcontents WHERE islandOfPersonalityID = $islandId";
$contentResult = executeQuery($contentQuery);

$backgroundImages = '';
$bgPosition = '';
$bgSize = '';

if ($island['name'] == 'Island of Family') {
    $backgroundImages = "url('assets/img/all.png'), url('assets/img/bingbong.png')";
    $bgPosition = "top left, bottom right";
    $bgSize = "150px, 150px";
} elseif ($island['name'] == 'Island of Gaming') {
    $backgroundImages = "url('assets/img/anger.png'), url('assets/img/disgust.png'), url('assets/img/joy.png')";
    $bgPosition = "top left, center, bottom right";
    $bgSize = "150px, 150px, 150px";
} elseif ($island['name'] == 'Island of Melody') {
    $backgroundImages = "url('assets/img/fear.png'), url('assets/img/fearsit.png')";
    $bgPosition = "top left, bottom right";
    $bgSize = "150px, 150px";
} elseif ($island['name'] == 'Island of Delicacies') {
    $backgroundImages = "url('assets/img/sadness.png'), url('assets/img/sit.png'), url('assets/img/star.png')";
    $bgPosition = "top left, center, bottom right";
    $bgSize = "150px, 150px, 150px";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Aldin's <?php echo htmlspecialchars($island['name']); ?></title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="icon" href="assets/img/icn.png">
    <style>
        .header-container {
            background-image:
                <?php echo $backgroundImages; ?>
            ;
            background-position:
                <?php echo $bgPosition; ?>
            ;
            background-size:
                <?php echo $bgSize; ?>
            ;
            background-repeat: no-repeat;
            position: relative;
            text-align: center;
            padding: 50px;
        }

        .header-container img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.1;/ pointer-events: none;
        }
    </style>
</head>

<body>

    <header class="header-container">
        <h1><?php echo htmlspecialchars($island['name']); ?></h1>
        <p><?php echo nl2br(htmlspecialchars($island['longDescription'])); ?></p>
    </header>

    <section class="content-container">
        <?php while ($content = $contentResult->fetch_assoc()) { ?>
            <div class="content-item">
                <img src="assets/img/<?php echo htmlspecialchars($content['image']); ?>" alt="Content Image"
                    class="content-image">
                <div class="content-text">
                    <p><?php echo nl2br(htmlspecialchars($content['content'])); ?></p>
                </div>
            </div>
        <?php } ?>
    </section>

</body>

</html>