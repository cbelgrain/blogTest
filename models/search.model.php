<?php

    class Search {

        private $terme;
        private $result;

        public function getResult($pdo) {
            $text = $_GET['text'];
            var_dump($text);

            // $this->terme = $pdo->prepare("SELECT titre, contenu FROM articles WHERE titre LIKE ? OR contenu LIKE ? LIMIT 1,5");
            // $this->terme->execute(array("%".$text."%", "%".$text."%"));

            // $this->result = $this->terme->fetchAll();

            
            // var_dump($this->result);

            return $text;
        }

    }



?>