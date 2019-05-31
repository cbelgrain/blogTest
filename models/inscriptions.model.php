<?php 

class InscriptionModel {

	private $inscription;

	public function registerBlogger($pdo){
		
		$query = "INSERT INTO users (nom, prenom, email, mdp, id_role) 
				VALUES (?, ?, ?, ?, ?)";

		$this->inscription = $pdo->prepare($query);
		$this->inscription->execute([$_POST['nom'], $_POST['prenom'], $_POST['email'], $_POST['mdp'], 2]);

		header('Location: ../?page=connexion');
	}

}

?>