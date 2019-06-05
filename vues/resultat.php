<?php
    include "controleurs/search.class.php";
    $search = new Search();
    $result = $search->controleText($pdo);
    var_dump($result);
?>

<main>
    <?= $result ?>
</main>