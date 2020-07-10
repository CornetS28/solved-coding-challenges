// 1. Create the button
// var button = document.createElement("button");
// button.innerHTML = "Do Something";

// 2. Append somewhere
var body = document.getElementsByClassName('post');
// console.log(body);
for (i = 0; i < body.length; i++) {
  var button = document.createElement("button");
  button.innerHTML = "Do Something";
   body[i].appendChild(button);
}
// body.appendChild(button);


// 3. Add event handler
button.addEventListener("click", function () {
  alert("did something");
});

/* Read 

https://css-tricks.com/use-button-element/
*/
