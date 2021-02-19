const authorization = "Bearer sk_e7fd564fc3c1eaffae41e71dfa576879";
// TODO

// "Authorization: Bearer sk_e7fd564fc3c1eaffae41e71dfa576879"

const baseUrl = "https://person.clearbit.com/v2/combined/find?email="

// 1. find the relevant elements and query 
//select them and store them in variables
 
const form = document.querySelector("#clearbitForm");
const input = document.querySelector("#clearbitEmail");
const name = document.querySelector("#userName");
const email = document.querySelector("#userEmail");
const bio = document.querySelector("#userBio");
const location = document.querySelector("#userLocation");

// 2. Attach an event listener to  the form (submit)
form.addEventListener('submit', (event) => {
  // 3. Prevent the default behavior of our event listner
  event.preventDefault();


  fetch(`${baseUrl}${input.value}`, {
    headers: {
      Authorization: authorization
    }
  })
    .then(response => response.json())
    .then((data) => {

      console.log(data)
      if (data.person) {
        name.innerText = data.person.name.fullName
        email.innerText = data.person.email
        bio.innerText = data.person.bio
        location.innerText = data.person.location
      };

    });

});



// 4. Make and AJAX GET REQUEST 


// 5. Fill users info with the API response 

// 6. 