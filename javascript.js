function openNav() {
  document.getElementById("myNav").style.width = "100%";
}

function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}

var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

function goBack() {
  window.history.back();
}

var modal = document.getElementById('id02');

function alert(){
alert("You are not an existing user. Please sign in");
} 

function thanks(){
	alert("Thanks for downloading!");
}