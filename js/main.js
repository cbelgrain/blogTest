'use strict'

var modalBtns = [...document.querySelectorAll(".modalBtn")];
modalBtns.forEach(function(btn){
  btn.onclick = function() {
    var modal = btn.getAttribute('open-modal');
    document.getElementById(modal).style.display = "block";
  }
});

var closeBtns = [...document.querySelectorAll(".closeBtn")];
closeBtns.forEach(function(btn){
  btn.onclick = function() {
    var modal = btn.getAttribute('close-modal');
    document.getElementById(modal).style.display = "none";
  }
});

window.onclick = function(event) {
  if (event.target.className === "modal") {
    event.target.style.display = "none";
  }
};