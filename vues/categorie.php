<?php
	include "controleurs/categories.class.php";
    $categorie = new Categories();
    $cat = $categorie->controleCategorie($pdo);
    $page = $categorie->controlePagination($pdo);
?>
<main class="container">
    <?= $cat ?>
    <?= $page[0]['nbArt'] ?>
</main>
