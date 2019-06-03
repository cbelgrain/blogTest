<?php


        if (isset($_GET["send"]) AND $_GET["send"] == "Rechercher") {
            $_GET["text"] = htmlspecialchars($_GET["text"]);
            $text = $_GET['text'];
            $text = trim($text);
            $text = strip_tags($text);
        }

        if (isset($text))
{
    $text = strtolower($text);
 $select_terme = $pdo->prepare("SELECT titre, contenu FROM articles WHERE titre LIKE ? OR contenu LIKE ?");
 $select_terme->execute(array("%".$text."%", "%".$text."%"));
}
else
{
 $message = "Vous devez entrer votre requete dans la barre de recherche";
}

header('Location: ?page=resulat');

?>