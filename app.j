//functions for showing property specific objects

let propertyIndex= 1;
showProperty(propertyIndex);

function currentProperty(ThisId) {
    showProperty(propertyIndex= ThisId);
}

  function showProperty(ThisId){
  let i;
  let select = document.getElementsByClassName("myProperties");
  let option = document.getElementsByClassName("option");
  let detail = document.getElementsByClassName("myPropertiesDetails");
  let booking = document.getElementsByClassName("myPropertiesBooking");
  let display = document.getElementById("displayname");
  if (ThisId > select.length) {propertyIndex = 1}
  if (ThisId < 1) {propertyIndex = select.length}
  for (i = 0; i < select.length; i++) {
    option[i].style.fontWeight = "normal";
    select[i].style.display = "none";
    detail[i].style.display = "none";
    booking[i].style.display = "none";
  }
  option[propertyIndex-1].style.fontWeight = "bold";
  select[propertyIndex-1].style.display = "block";
  detail[propertyIndex-1].style.display = "block";
  booking[propertyIndex-1].style.display = "block";
  display.innerHTML = document.getElementById(ThisId).innerHTML;
 
}


//functions for property gallery slider

let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("demo");
  let captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
