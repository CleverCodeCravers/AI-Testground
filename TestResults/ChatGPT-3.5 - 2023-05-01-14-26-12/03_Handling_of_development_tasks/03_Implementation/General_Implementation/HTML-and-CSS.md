## Prompt 1

We want to build a portfolio for a company.
It should be minimalistic. That means it should only be white and black. Try to be creative and use bootstrap 4.

### Result

Sure, here is an example HTML code for a minimalistic portfolio website using Bootstrap 4:

````html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Minimal Portfolio</title>
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Minimal Portfolio</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#"
              >Home <span class="sr-only">(current)</span></a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Portfolio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container my-5">
      <h1 class="text-center">Welcome to our Minimal Portfolio</h1>
      <p class="lead text-center">We believe in simple and elegant design</p>
    </div>

    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="card mb-4">
            <img
              class="card-img-top"
              src="https://via.placeholder.com/350x200"
              alt="Card image cap"
            />
            <div class="card-body">
              <h5 class="card-title">Project 1</h5>
              <p class="card-text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
                euismod tellus vel risus pulvinar luctus.
              </p>
              <a href="#" class="btn btn-dark">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4">
            <img
              class="card-img-top"
              src="https://via.placeholder.com/350x200"
              alt="Card image cap"
            />
            <div class="card-body">
              <h5 class="card-title">Project 2</h5>
              <p class="card-text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
                euismod tellus vel risus pulvinar luctus.
              </p>
              <a href="#" class="btn btn-dark">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4">
            <img
              class="card-img-top"
              src="https://via.placeholder.com/350x200"
              alt="Card image cap"
            />
            <div class="card-body">
              <h5 class="card-title">Project 3</h5>
              <p class="card-text">
                Lorem ipsum dolor sit amet, ## Prompt 2 Please create a form
                where people can fill in general contact information: -
                Salutation, Firstname, Surname - Email - Phone-Nr. The form
                should be written in HTML5 and be styled using bootstrap 3. It
                should be a simple submit form, no javascript required. ###
                Result Sure, here is an example of an HTML5 form using Bootstrap
                3 for styling: ```html
                <!DOCTYPE html>
                <html lang="en">
                  <head>
                    <meta charset="UTF-8" />
                    <title>Contact Information Form</title>
                    <link
                      rel="stylesheet"
                      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
                    />
                  </head>
                  <body>
                    <div class="container">
                      <h1>Contact Information</h1>
                      <form method="POST">
                        <div class="form-group">
                          <label for="salutation">Salutation:</label>
                          <input
                            type="text"
                            class="form-control"
                            id="salutation"
                            name="salutation"
                          />
                        </div>
                        <div class="form-group">
                          <label for="firstname">First Name:</label>
                          <input
                            type="text"
                            class="form-control"
                            id="firstname"
                            name="firstname"
                            required
                          />
                        </div>
                        <div class="form-group">
                          <label for="surname">Surname:</label>
                          <input
                            type="text"
                            class="form-control"
                            id="surname"
                            name="surname"
                            required
                          />
                        </div>
                        <div class="form-group">
                          <label for="email">Email:</label>
                          <input
                            type="email"
                            class="form-control"
                            id="email"
                            name="email"
                            required
                          />
                        </div>
                        <div class="form-group">
                          <label for="phone">Phone Number:</label>
                          <input
                            type="tel"
                            class="form-control"
                            id="phone"
                            name="phone"
                            required
                          />
                        </div>
                        <button type="submit" class="btn btn-primary">
                          Submit
                        </button>
                      </form>
                    </div>
                  </body>
                </html>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
````

This form includes the required fields for salutation, first name, surname, email, and phone number, as well as the appropriate `type` attribute for each input field to ensure the correct input type is used. The `required` attribute is also included for the first name, surname, email, and phone number fields to ensure they are not left blank when the form is submitted. The form is styled using Bootstrap classes to ensure a clean and consistent look.

## Prompt 3

Please generate a template for a profile page for me as a software developer.
The layout should be responsive.

### Result

Here's a basic template for a profile page for a software developer with a responsive layout:

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Software Developer Profile</title>
    <!-- Replace with your own CSS file or use a framework like Bootstrap or Foundation -->
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <header>
      <!-- Replace with your own logo or text -->
      <h1>Software Developer Profile</h1>
    </header>
    <main>
      <section class="profile">
        <h2>My Profile</h2>
        <div class="row">
          <div class="col-md-4 col-sm-6">
            <img src="profile.jpg" alt="My Profile Picture" />
          </div>
          <div class="col-md-8 col-sm-6">
            <h3>Name</h3>
            <p>John Doe</p>
            <h3>Location</h3>
            <p>San Francisco, CA</p>
            <h3>Skills</h3>
            <p>JavaScript, Python, SQL, Ruby, HTML/CSS</p>
          </div>
        </div>
      </section>
      <section class="experience">
        <h2>Experience</h2>
        <ul>
          <li>
            <h3>Software Engineer</h3>
            <h4>ABC Company</h4>
            <p>Jan 2020 - Present</p>
            <ul>
              <li>
                Developed and maintained software applications using JavaScript,
                Python, and React
              </li>
              <li>Worked on database design and optimization using SQL</li>
              <li>Collaborated with team members using agile methodologies</li>
            </ul>
          </li>
          <li>
            <h3>Software Developer</h3>
            <h4>XYZ Corporation</h4>
            <p>Jun 2017 - Dec 2019</p>
            <ul>
              <li>Created web applications using Ruby on Rails</li>
              <li>
                Performed code reviews and provided feedback to team members
              </li>
              <li>Managed and maintained servers and deployment pipelines</li>
            </ul>
          </li>
        </ul>
      </section>
      <section class="education">
        <h2>Education</h2>
        <ul>
          <li>
            <h3>Bachelor of Science in Computer Science</h3>
            <h4>University of California, Berkeley</h4>
            <p>2013 - 2017</p>
          </li>
        </ul>
      </section>
    </main>
    <footer>
      <p>&copy; 2023 Software Developer Profile</p>
    </footer>
  </body>
</html>
```

The CSS file should define the grid layout using classes like `.row`, `.col-md-4`, and `.col-sm-6` as used in the HTML template. You can either write your own CSS or use a framework like Bootstrap or Foundation.
