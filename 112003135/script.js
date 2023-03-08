const form = document.getElementById('userForm');
const firstName = document.getElementById('firstName');
const lastName = document.getElementById('lastName');
const userName = document.getElementById('userName');
const email = document.getElementById('email');
const state = document.getElementById('state');
const country = document.getElementById('country');

form.addEventListener('submit', (event) => {
	if(!validateForm()) {
		event.preventDefault();
	}
});

function validateForm() {
	let isValid = true;

	if(firstName.value.length < 2) {
		alert("First name must be at least 2 characters long");
		isValid = false;
	}

	if(lastName.value.length < 2) {
		alert("Last name must be at least 2 characters long");
		isValid = false;
	}

	if(userName.value.length < 4) {
		alert("User name must be at least 4 characters long");
		isValid = false;
	}

	if(!email.validity.valid) {
		alert("Invalid email address");
		isValid = false;
	}

	if(state.value.length < 2) {
		alert("State must be at least 2 characters long");
		isValid = false;
	}

	if(country.value.length < 2) {
		alert("Country must be at least 2 characters long");
		isValid = false;
	}

	return isValid;
}
