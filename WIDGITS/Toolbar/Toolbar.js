/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function func_dropdown() {
    document.getElementById("myDropdown").classList.toggle("showDropdown");
}

// Close the dropdown menu if the user clicks outside of it
 window.onclick = function(event) {
  if (!event.target.matches('.dropdown')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('showDropdown')) {
        openDropdown.classList.remove('showDropdown');
      }
    }
  }
}
function func_settings() {
    document.getElementById("mySettings").classList.toggle("showSettings");
}
window.onclick = function(event) {
  if (!event.target.matches('.showSettings')) {

    var dropdowns = document.getElementsByClassName("settings-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('showSettings')) {
        openDropdown.classList.remove('showSettings');
      }
    }
  }
}