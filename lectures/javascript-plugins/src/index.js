// imports
import { fetchMovies, updateResultsList } from './movies';
import { initSortable } from './plugins/init_sortable';
import { initMarkdown } from './plugins/init_markdown';
import { initSelect2 } from './plugins/init_select2';

// executing functions
fetchMovies('harry potter'); // on 1st page load
initSortable();
initMarkdown();
initSelect2();

// declaring variables
const form = document.querySelector('#search-form');

// adding event listeners
form.addEventListener('submit', updateResultsList);