// TODO: Build an awesome garage!
// 1. Declare variables
const form = document.querySelector("#new-car");
const brand = document.querySelector("#brand");
const model = document.querySelector("#model");
const plate = document.querySelector("#plate");
const owner = document.querySelector("#owner");
const list = document.querySelector(".cars-list");
// 2. Declare listener on form. Event = submit
form.addEventListener('submit', (event) => {
    event.preventDefault();
    console.log(brand.value)
    console.log(model.value)
    console.log(plate.value)
    console.log(owner.value)

// 3. Do POST request in AJAX
    fetch("https://wagon-garage-api.herokuapp.com/MavisSons/cars", {
    method: "POST",
    headers: {
        'Content-Type': 'application/json'
      },
    body: JSON.stringify({
        "brand": brand.value,
        "model": model.value,
        "owner": owner.value,
        "plate": plate.value 
    })
  })
    .then(response => response.json())
    .then((data) => {
      displayCars(); // Look at local_names.default
    });
});

// 1. Make AJAX request GET.



  const displayCars = () => {
    fetch("https://wagon-garage-api.herokuapp.com/MavisSons/cars")
    .then(response => response.json())
    .then((data) => {
        list.innerHTML = ""

      data.forEach((result) => {
          const car = `<div class="car">
          <div class="car-image">
            <img src="http://loremflickr.com/280/280/Ferrari 308 GTS" />
          </div>
          <div class="car-info">
            <h4>${result.brand} ${result.model}</h4>
            <p><strong></strong> ${result.owner}</p>
            <p><strong>Plate:</strong>${result.plate}</p>
          </div>
        </div>`
        list.insertAdjacentHTML("beforeEnd", car)
      });
    });
  };

  displayCars();

// 2. Loop over data and console.log()

// 3. Insert indivual car info into HTML.



