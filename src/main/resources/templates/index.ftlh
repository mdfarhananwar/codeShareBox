<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CodeShareBox - Create, Copy, Paste and Share</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<style>
body {
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
  margin: 0;
  padding: 0;
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="400" height="400" viewBox="0 0 400 400"><path d="M0 10 L200 200 L400 10 Z" fill="%230c1b39"/><circle cx="60" cy="40" r="15" fill="%230c0f21"/><circle cx="120" cy="80" r="15" fill="%230c0f21"/><circle cx="180" cy="120" r="15" fill="%230c0f21"/><circle cx="240" cy="160" r="15" fill="%230c0f21"/><circle cx="300" cy="200" r="15" fill="%230c0f21"/><circle cx="360" cy="240" r="15" fill="%230c0f21"/><line x1="60" y1="40" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="120" y1="80" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="180" y1="120" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="240" y1="160" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="300" y1="200" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="360" y1="240" x2="200" y2="200" stroke="%23666" stroke-width="2"/></svg>')
    repeat;
  background-color: #1a1a1a;
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

.header {
  background-color: #0c1b39;
  color: #fff;
  padding: 20px;
  text-align: left;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.logo {
  width: 40px;
  height: auto;
  margin-right: 10px;
}
.logo-text {
  font-size: 28px;
  font-weight: bold;
  color: #fff;
  text-decoration: none;
  transition: color 0.3s ease;
}

.logo-text:hover {
  color: #ff9900;
}
.navigation {
  display: flex;
  align-items: center;
}
.navigation a {
  color: #fff;
  text-decoration: none;
  margin: 0 20px;
  font-weight: bold;
  letter-spacing: 1px;
  transition: color 0.3s ease;
}
.navigation a:hover {
  color: #ff9900;
}

label {
  display: block;
  margin-top: 10px;
}

input {
  width: 100%;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 5px;
  font-size: 14px;
}

.main-content {
  /* Center the form horizontally */
  display: flex;
  justify-content: center;
  align-items: center;
  flex: 1;
}

.input-container {
  display: flex;
  align-items: center;
  border: 1px solid #ccc;
  border-radius: 5px;
  padding: 4px;
  margin-bottom: 15px;
  background-color: rgba(255, 255, 255, 0.95);
}
.input-field {
  flex: 1;
  border: none;
  outline: none;
  font-size: 14px;
}
.input-icon {
  font-size: 18px;
  color: #ff9900;
  margin-right: 10px;
}
.input-field:focus {
  border-color: #3498db;
}

.button-container {
  margin-top: 15px;
}

#send_snippet {
  /* Add margin to the button */
  margin-top: 10px;
}

.container {
  background: rgba(255, 255, 255, 0.9);
  box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
  border-radius: 10px;
  padding: 30px;
  width: 400px;
  text-align: center;
}

textarea {
  width: 100%;
  height: 200px;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  resize: none;
  white-space: nowrap; /* Prevent line breaks */
  overflow-x: auto; /* Enable horizontal scroll */
  font-size: 14px;
  margin-bottom: 20px;
  margin-left: -10px;
}

button {
  background-color: #3498db;
  color: white;
  border: none;
  border-radius: 5px;
  padding: 10px 20px;
  cursor: pointer;
  font-size: 16px;
  transition: background-color 0.3s ease;
}

button:hover {
  background-color: #2980b9;
}
/* Your existing CSS styles */

/* Media query for screens smaller than 768px (e.g., smartphones) */
@media (max-width: 768px) {
  .header {
    flex-direction: column; /* Stack elements vertically on small screens */
    text-align: center; /* Center-align text on small screens */
  }
  .logo {
    margin: 10px 0; /* Add some margin for spacing on small screens */
  }
  .navigation {
    margin-top: 20px; /* Add margin between logo and navigation links */
  }
  .navigation a {
    margin: 10px 0; /* Add margin between navigation links on small screens */
  }
  body {
     background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="300" height="300" viewBox="0 0 400 400"><path d="M0 10 L200 200 L400 10 Z" fill="%230c1b39"/><circle cx="60" cy="40" r="15" fill="%230c0f21"/><circle cx="120" cy="80" r="15" fill="%230c0f21"/><circle cx="180" cy="120" r="15" fill="%230c0f21"/><circle cx="240" cy="160" r="15" fill="%230c0f21"/><circle cx="300" cy="200" r="15" fill="%230c0f21"/><circle cx="360" cy="240" r="15" fill="%230c0f21"/><line x1="60" y1="40" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="120" y1="80" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="180" y1="120" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="240" y1="160" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="300" y1="200" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="360" y1="240" x2="200" y2="200" stroke="%23666" stroke-width="2"/></svg>')
    repeat;
  background-color: #1a1a1a;
  }
  .container {
    width: 90%; /* Adjust width for smaller screens */
  }
}
/* Media query for screens larger than 768px (e.g., tablets and desktops) */
@media (min-width: 769px) {
  .header {
    flex-direction: row; /* Reset to horizontal layout for larger screens */
    justify-content: space-between; /* Align elements to the left and right */
    align-items: center; /* Center-align items vertically */
    text-align: left; /* Reset text alignment */
  }
  .logo {
    margin: 0; /* Remove margin for spacing on larger screens */
  }
  .navigation {
    margin-top: 0; /* Remove margin between logo and navigation links */
  }
  .navigation a {
    margin: 0 20px; /* Reset margin between navigation links */
  }

  .container {
    width: 400px; /* Reset container width for larger screens */
  }
}
</style>
<body>
<div class="header">
    <a href="/" class="logo-text" style="display: flex; align-items: center; text-decoration: none;">
        <img src="https://pastebin.com/themes/pastebin/img/pastebin_logo_side_outline_support_ukraine.webp" alt="CodeShareBox Logo" class="logo"> CodeShareBox </a>
    <div class="navigation">
        <a href="/">Home</a>
        <a href="/latest">Latest CodeShares</a>
        <a href="/about">About</a>
    </div>
</div>
<div class="main-content">
    <div class="container">
        <h1>Create Code Snippet</h1>
        <form action="/api/code/new" method="post">
            <textarea id="code_snippet" name="textareaName" placeholder="Write or paste your code here"></textarea>

            <div class="input-container">
                <i class="fas fa-stopwatch input-icon"></i>
                <select id="time_restriction" class="input-field" style="cursor: pointer; background: transparent; color: #757575;">
                    <option value="" disabled selected hidden>Link Expiry (Choose time)</option>
                    <option value="60">1 Minute</option>
                    <option value="3660">1 Hour</option>
                    <option value="28800">8 Hours</option>
                    <option value="86400">24 Hours</option>
                    <option value="604800">7 Days</option>
                    <option value="864000">10 Days</option>
                    <option value="1296000">15 Days</option>
                    <option value="2592000">30 Days</option>
                    <option value="15552000">180 Days</option>
                    <option value="31536000">365 Days</option>
                    <option value="0">Never</option>
                </select>
            </div>
            <div class="input-container">
                <i class="fas fa-eye input-icon"></i>
                <input id="views_restriction" class="input-field" type="number" placeholder="View Restriction (e.g. 10)" min="0">
            </div>
            <div class="button-container">
                <button id="send_snippet" type="button" onclick="send()">
                    <i class="fas fa-paper-plane"></i> Submit </button>
            </div>
            <div id="errorContainer"></div>
        </form>
    </div>
</div>
<script>
    function send() {
      // Clear any previous error messages
      clearErrors();
      // Get the form input values
      let code = document.getElementById("code_snippet").value;
      let timeRestriction = document.getElementById("time_restriction").value;
      let viewsRestriction = document.getElementById("views_restriction").value;
      // Validate the input fields
      var errors = [];
      if (code.trim() === '') {
        errors.push('Code field is required.');
      }
      if (timeRestriction.trim() === '') {
        errors.push('Time field is required.');
      }
      if (viewsRestriction.trim() === '') {
        errors.push('Views field is required.');
      }
      // Display any validation errors
      if (errors.length > 0) {
        displayErrors(errors);
      } else {
        var dataObject = {
          "code": code,
          "time": timeRestriction,
          "views": viewsRestriction
        };
        // Send the data as JSON in a POST request
        fetch("/api/code/new", {
          method: 'POST',
          body: JSON.stringify(dataObject), // Send as JSON data
          headers: {
            'Content-Type': 'application/json',
          },
        }).then(function(response) {
          if (response.ok) {
            // Parse the JSON response to extract the id
            return response.json();
          } else {
            // Handle any server-side errors here
            console.error('Server error:', response.status);
          }
        }).then(function(data) {
          // Check if the id is available in the response
          if (data && data.id) {
            // Redirect to the new page using the id
            window.location.href = '/confirm/' + data.id;
          } else {
            console.error('No id found in the response.');
          }
        }).catch(function(error) {
          console.error('Error:', error);
        });
      }
    }

    function clearErrors() {
      var errorContainer = document.getElementById('errorContainer');
      errorContainer.innerHTML = '';
    }

    function displayErrors(errors) {
      var errorContainer = document.getElementById('errorContainer');
      var errorList = document.createElement('ul');
      errors.forEach(function(error) {
        var listItem = document.createElement('li');
        listItem.textContent = error;
        errorList.appendChild(listItem);
      });
      errorContainer.appendChild(errorList);
    }
</script>
</body>
</html>