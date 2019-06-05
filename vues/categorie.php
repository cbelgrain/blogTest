<?php
	include "controleurs/categories.class.php";
    $categorie = new Categories();
    $cat = $categorie->controleCategorie($pdo);
    //$cat = $categorie->getPagination($pdo);
?>
<main class="container">
	<?= $cat['count(*)'] ?>
</main>
