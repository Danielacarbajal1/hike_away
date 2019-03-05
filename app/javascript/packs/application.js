import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

var modalConfirm = function(callback){

  $("#btn-confirm").on("click", function(){
    $("#myModal").modal('show');
  });

  $("#modal-btn-fav").on("click", function(){
    callback(true);
    $("#myModal").modal('hide');
  });

  $("#modal-btn-no").on("click", function(){
    callback(false);
    $("#myModal").modal('hide');
  });
};

modalConfirm(function(confirm){
  if(confirm){
    $("#result").html("This trip has been added to your favourites");
  }else{
    $("#result").html("Cancelled");
  }
});

function move() {
  var elem = document.getElementById("myBar");
  var width = 1;
  if (elem) {
  var id = setInterval(frame, 10);
  function frame() {
    if (width >= 100) {
      clearInterval(id);
    $('#progressBarPage').fadeOut("slow");
    } else {
      width++;
      elem.style.width = width + '%';
      }
    }
  }
}
window.onload = move()

// event listener for each checkbox
// on click, IF the checkbox is checked
// get the style of the progress bar
// and increase it
// ELSE if the checkbox is not checked
// get the style of the progress bar
// and decrease it

var shoes = document.getElementById("shoes")
var water = document.getElementById("water")
var food = document.getElementById("food")
var camera = document.getElementById("camera")
var date = document.getElementById("date")

var count = 0
const counter = document.querySelector("span.counter")
console.log(counter)

shoes.addEventListener('click', function () {
  if (shoes.checked) {
    // var progressShoes = document.getElementById("progress")
    count = count + 20
    console.log("The shoes is checked");

   } else {
    // var dontProgressShoes = document.getElementById("dontProgress")
    count = count - 20
    console.log("The shoes is not checked");
  }
  document.getElementById("dontProgress").style.width = `${count}%`
  counter.innerHTML = `${count}%`
});

water.addEventListener('click', function () {
  if (water.checked) {
    // var progressWater = document.getElementById("progress")
    count = count + 20
    console.log("Water is checked")

  } else {
    // var dontProgressWater = document.getElementById("dontProgress")
    count = count - 20
    console.log("Water is not checked ")
  }
  document.getElementById("dontProgress").style.width = `${count}%`
  counter.innerHTML = `${count}%`
});

food.addEventListener('click', function () {
  if (food.checked) {
    // var progressFood = document.getElementById("progress")
    count = count + 20
    console.log("Food is checked")

  } else {
    // var dontProgressFood = document.getElementById("dontProgress")
    count = count - 20
    console.log("Food is not checked")
  }
  document.getElementById("dontProgress").style.width = `${count}%`
  counter.innerHTML = `${count}%`
});

camera.addEventListener('click', function () {
  if (camera.checked) {
    // var progressCamera = document.getElementById("progress")
    count = count + 20
    console.log("Camera is checked")

  } else {
    // var dontProgressCamera = document.getElementById("dontProgress")
    count = count - 20
    console.log("Camera is not checked")
  }
  document.getElementById("dontProgress").style.width = `${count}%`
  counter.innerHTML = `${count}%`
});

date.addEventListener('click', function () {
  if (date.checked) {
    // var progressDate = document.getElementById("progress")
    count = count + 20
    console.log("Your date is checked")

  } else {
    // var dontProgressDate = document.getElementById("dontProgress")
    count = count - 20
    console.log("Your date is not checked")
  }
  document.getElementById("dontProgress").style.width = `${count}%`
  counter.innerHTML = `${count}%`
});
  console.log(counter)
  counter.innerHTML = `${count}%`

var modalConfirm = function(callback){

  $("#btn-confirmdir").on("click", function(){
    $("#myDirections").modal('show');
  });

  $("#modal-btn-directions").on("click", function(){
    callback(true);
    $("#myDirections").modal('hide');
  });

  $("#modal-btn-directions-close").on("click", function(){
    callback(false);
    $("#myDirections").modal('hide');
  });
};
modalConfirm(function(confirmdir){
  if(confirmdir){
    $("#result2");
  }else{
    $("#result2");
  }
});
