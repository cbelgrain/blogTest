'use strict'

//modal
var modal = document.getElementById("divModal");

// bouton pr ouvrir modal
var modalBtn = document.getElementById("modalBtn");

// bouton fermer modal
var closeBtn = document.getElementById("close");


// fonctions

function ouvrirModal(){
    modal.style.display = "block";
}

function fermerModal(){
    modal.style.display = "none";
}

function fermerModalClavier(e){
    if(e.keyCode == 27){
        modal.style.display = "none";
    }
}


// event
modalBtn.addEventListener("click", ouvrirModal);
closeBtn.addEventListener("click", fermerModal);
window.addEventListener("keydown", fermerModalClavier, false);
