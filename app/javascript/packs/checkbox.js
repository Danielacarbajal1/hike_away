
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