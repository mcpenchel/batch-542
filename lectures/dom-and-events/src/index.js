// ==========================================
// 1) querySelector
// ==========================================
//
// The MOST IMPORTANT JS function we're gonna use \O/
//
// How does it work?
// Very simple, we can use it in these different ways:
//
// document.querySelector('p')
// document.querySelector('.red')
// document.querySelector('#players')
//
// And the function returns to us (and because of that we can store it into a variable, be it let or const)
// the FIRST HTML element found with you search criteria!

const starWarsParagraph = document.querySelector('.red');

// ==========================================
// 2) getElementById
// ==========================================
//
// getElementById is basically querySelector('#the_ID'), an alternative!
// You can use it, or you can always use querySelector.. You're the boss ;)
const playersUl = document.getElementById('players');

// ==========================================
// 3) insertAdjacentHTML
// ==========================================
//
// This is the best way that we have to INSERT HTML code inside the DOM!
// The syntax is the_element.insertAdjacentHTML("the_option", "<div>the new element</div>")
//
// Documentation: https://developer.mozilla.org/en-US/docs/Web/API/Element/insertAdjacentHTML

playersUl.insertAdjacentHTML("beforeend", "<li>Darth Maul</li>");

// ==========================================
// 4) innerText & innerHTML
// ==========================================
//
// You can think of these properties of any element of the DOM as attr_readers and attr_writers!
// If you use element.innerText , you'll be READING the text inside the element (between the tags)
// If you use element.innerHTML , you'll be READING the HTML inside the element (between the tags)
//
// Now..
// If you use element.innerText = "some text", you'll be CHANGING the text inside the element
// If you use element.innerHTML = "<p>some text</p>", you'll be CHANGING the HTML inside the element
playersUl.querySelector('.red').innerText = "Anakin";

// To check in the console the value, always use console.log(whatever_you_want_to_read)
console.log(playersUl.querySelector('.red').innerText);

// ==========================================
// 4) querySelectorAll
// ==========================================
//
// Works in the same way as querySelector, difference is that it returns a nodeList (similar to an array)
// with ALL the elements that match your search criteria.

// In here we're getting all li that descend from the element whose id is fifa-wins
const winningCountries = document.querySelectorAll('#fifa-wins li');

// We can do a forEach over the nodeList, just like we can over arrays!
winningCountries.forEach((countryLi) => {
  console.log(countryLi); // countryLi is the li
  console.log(countryLi.innerText); // countryLi.innerText is the text inside the li
});

// ==========================================
// 4) style
// ==========================================
//
// This is the way that we have to modify an element's style!
// We can do the_element.style.fontSize = "14px" or the_element.style.color = "purple" .. 
// And so on (; All the CSS properties are available after style, and you access them with
// lowerCamelCase, like the_element.style.fontSize

winningCountries.forEach((countryLi) => {
  countryLi.style.color = "purple"; // We've just changed the color of every winning country li to purple!
});

// To hide an element, you can do:
starWarsParagraph.style.display = "none";

// And to make it reapper in the DOM, you can just do this:
starWarsParagraph.style.display = ""; // or "block" instead of ""

// ==========================================
// 5) classList
// ==========================================
//
// Sometimes you already have some CSS classes with the style that you want.. And it would be a pain in the ass
// to change the style manually a thousand times, right? That's alright, we can just add or remove a CSS class
// from the element!

// We've just added the my-new-css-class class to the paragraph!
starWarsParagraph.classList.add("my-new-css-class");

// We've just removed the my-new-css-class class from the paragraph!
starWarsParagraph.classList.remove("my-new-css-class");

// Sometimes, you want to add the class IF it is not in the element..
// And if it is in the element, you want to remove it.
//
// For that, we have the classList.toggle

starWarsParagraph.classList.toggle("my-new-css-class");

// ==========================================
// 6) value
// ==========================================
//
// When you're manipulating inputs in the DOM, innerText and innerHTML don't do what we want..
// For that we have the value property.

const emailInput = document.querySelector('#email');

// To read the value that was typed inside the input, we do:
emailInput.value

// To change the value, we do:
emailInput.value = "My new value";

// ==========================================
// 7) dataset
// ==========================================
//
// You'll understand better in the future why and when to add data-attributes to HTML elements..
// Basically, it's useful when we want to provide more information about an element so that the JS
// can access it and use it somehow.

// How does it work?
// First, inside the HTML, let's think of an element like this: <div id="name">Matheus Penchel</div>
// We change it manually, so that it looks like this: <div id="matt" data-favorite-band="Mastodon" data-age="31" data-football-club="Botafogo">Matheus Penchel</div>

const matheusDiv = document.querySelector('#matt');

// To access the dataset information, we do it like this:
matheusDiv.dataset.favoriteBand
matheusDiv.dataset.footballClub
matheusDiv.dataset.age

// ==========================================
// 8) addEventListener
// ==========================================
//
// Here is when JS starts getting powerful and fun!! Everything we learned so far are tools that we're gonna use
// to work with events.

// How to prepare an addEventListener? Always make yourself three questions:

// 1) What are the relevant elements to my event? We should capture them and store them in variables!!
// 2) When should something happen? Which event are we listening to?
// 3) What should happen?

// ==========================================
// 8.1) addEventListener -> Example 1
// ==========================================
// After clicking on the paragraph, I want to display a "pop-up" of sort with some message.

// 1) What are the relevant elements to my event?
const galaxyParagraph = document.querySelector('.red');

// 2) When should something happen? Which event are we listening to?
galaxyParagraph.addEventListener('click', (event) => {
  // 3) What should happen?
  window.alert("Wooow, you've clicked on me!");
})

// ==========================================
// 8.2) addEventListener -> Example 2
// ==========================================
// After clicking on a delete button, I want to delete the parent li (which includes the button)

// 1) What are the relevant elements to my event?
const deleteButtons = document.querySelectorAll('#fifa-wins button');

deleteButtons.forEach((button) => {
  // 2) When should something happen? Which event are we listening to?
  button.addEventListener('click', (event) => {
    // 3) What should happen?
    // event.target.parentElement.remove();
    // same thing as
    button.parentElement.remove();
  })
})

// ==========================================
// 8.3) addEventListener -> Example 3
// ==========================================
// Livecode from Slides
// 1) What are the relevant elements to my event?
const images = document.querySelectorAll('img');

images.forEach((img) => {
  // 2) When should something happen? Which event are we listening to?
  img.addEventListener('click', (event) => {
    // 3) What should happen?
    img.classList.toggle('img-circle');
  })
})