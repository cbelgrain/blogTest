<?php

include "../models/search.model.php";

class Rechercher {

    private $text;
    private $result;

    public function controleText($pdo) {
        if(!empty($_GET['text'])){
            $this->text = new Search();
            $this->result = $this->text->getResult($pdo);
        }
        return $this->result;
    }
}

?>