const results = document.querySelector("#results");
const movieInput = document.querySelector("#keyword");

const searchForm = document.querySelector("#search-movies")

searchForm.addEventListener("submit", (event) => {
  event.preventDefault(); // prevents reloading the page!

  // Ajax doing a GET request
  fetch(`http://www.omdbapi.com/?s=${movieInput.value}&apikey=adf1f2d7`)
    .then(response => response.json())
    .then((data) => {

      if (data.Search) {
        results.innerHTML = "";
  
        data.Search.forEach((result) => {
          const movie = `<li class="list-inline-item">
            <img src="${result.Poster}" alt="">
            <p>${result.Title}</p>
          </li>`;
          results.insertAdjacentHTML("beforeend", movie);
        });
      }

    });

})

const cityInput = document.querySelector('#search-city')

cityInput.addEventListener("keyup", (event) => {
  const apiUrl = "https://places-1.algolianet.com/1/places/query"

  // Ajax doing a POST request
  fetch(apiUrl, {
    method: "POST",
    body: JSON.stringify({ query: cityInput.value })
  })
  .then(response => response.json())
  .then((data) => {
    // console.log(data); // Look at local_names.default
  
    data.hits.forEach((hit) => {
      console.log(hit.administrative[0]);
    })
  
  });

})



// More organized way, with functions, but slightly more
// complicated:

// const results = document.querySelector("#results");
// const movieInput = document.querySelector("#keyword");
// const searchForm = document.querySelector("#search-movies")

// const buildMoviesHTML = (data) => {
//   if (data.Search) {
//     results.innerHTML = "";

//     data.Search.forEach((result) => {
//       const movie = `<li class="list-inline-item">
//         <img src="${result.Poster}" alt="">
//         <p>${result.Title}</p>
//       </li>`;
//       results.insertAdjacentHTML("beforeend", movie);
//     });
//   }
// }

// const fetchMovies = () => {
//   fetch(`http://www.omdbapi.com/?s=${movieInput.value}&apikey=adf1f2d7`)
//     .then(response => response.json())
//     .then(buildMoviesHTML);
// }

// searchForm.addEventListener("submit", (event) => {
//   event.preventDefault(); // prevents reloading!
//   fetchMovies();
// })

