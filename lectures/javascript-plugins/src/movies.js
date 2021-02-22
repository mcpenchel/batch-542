const list = document.querySelector('#results');

const insertMovies = (data) => {
  data.Search.forEach((result) => {
    const movie = `<li>
      <img src="${result.Poster}" alt="" />
      <p>${result.Title}</p>
    </li>`;
    list.insertAdjacentHTML('beforeend', movie);
  });
};

const fetchMovies = (query) => {
  fetch(`http://www.omdbapi.com/?s=${query}&apikey=adf1f2d7`)
  .then(response => response.json())
  .then(insertMovies) // arrow function allows us to refactor
  // the callback, and just provide a function instead of
  // writing it; the variable will be provided in an
  // IMPLICIT way!
};

const updateResultsList  = (event) => {
  event.preventDefault(); // prevent page reload
  list.innerHTML = ''; // it throws away everything inside the ul
  const input = document.querySelector('#search-input');
  fetchMovies(input.value);
}

export { fetchMovies, updateResultsList };