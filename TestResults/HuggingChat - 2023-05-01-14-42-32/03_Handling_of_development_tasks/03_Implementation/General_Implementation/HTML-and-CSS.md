## Prompt 1

We want to build a portfolio for a company.
It should be minimalistic. That means it should only be white and black. Try to be creative and use bootstrap 4.

### Result

Building a Minimalist Company Portfolio Website with Bootstrap 4 and White/Black Colors

Creating a clean and professional portfolio requires careful planning and design choices. In this tutorial, we will craft a modern yet timeless web page with a limited palette consisting solely of black and white colors, leveraging the power of Bootstrap 4 framework along the way. Buckle up for some serious web development artistry!

Step 1: Setting Up Local Environment

Before diving into building our beautiful, sleek portfolio site, ensure that you have all the required tools and software prepped.
*On Mac/Linux/*Nix:

    1. Install Node.js: Visit <https://nodejs.org> and follow the installation instructions depending on your operating system. Ensure that node is properly set up in your system's PATH variables as well.
    2. Update npm: Type the following commands one at a time in your terminal to update npm to its latest stable release:

```
npm install -g n
n install
npm uninstall -g npm
npm install
```

Now we have the proper setup for managing packages. Continue with setting up your local dev environment if needed, such as installing Visual Studio Code, creating a virtual environment, etc. If you prefer different editors, feel free to substitute them accordingly in the next steps.
On Windows:

    1. Install Node.js: Follow the same procedure as mentioned above on Mac/Linux/Nix systems but also need to open PowerShell (or cmd, but PowerShell preferred) as administrator before running the executable file. Then, run these commands instead of opening the .pkg file:

```
Set-ExecutionPolicy RemoteSigned -Scope Process
Accept-Language en-US
./NodeInstaller.exe
```

After completing these tasks, proceed to updating npm. For more details on Windows setup, check out NodeJs Offical Documentation. If ne

## Prompt 2

Please create a form where people can fill in general contact information:

- Salutation, Firstname, Surname
- Email
- Phone-Nr.

The form should be written in HTML5 and be styled using bootstrap 3.
It should be a simple submit form, no javascript required.

### Result

Creating a Simple Contact Form Using HTML5 and Styling With Bootstrap 3

Building an elegant and user-friendly contact form is essential when creating any type of online presence. By adhering to current best practices in form design, users will find interacting with your application less intimidating and more engaging. Today, let's tackle basic form creation with HTML5 and style it using Bootstrap 3. No JavaScript necessary – just pure markup and CSS magic ahead.

Step 1: Setting Up Your Project Structure

First, prepare the environment to write our code:

    1. Open a text editor or IDE capable of handling multiple tabs or files simultaneously, like Sublime Text or Atom, or switch to a full-fledged integrated developer environment such as Visual Studio Code. Alternatively, start using Jupyter Notebook or any other Markdown enabled workflow for advanced documentation generation alongside frontend work.

    2. To organize your workspace, create two separate folders entitled "assets" and "html". Put our index file inside "index.html", which holds the form itself. The assets folder stores static resources such as images and fonts. You may adjust the filenames or paths if working differently.

Here's the recommended folder structure:

```
.
├── assets
│   ├── img
│   │   └── logo.jpg (optional: could serve as a placeholder image)
│   └── stylesheets
│       ├── base.css (external stylesheet; see step 6)
│       └── _contactForm.scss (local scope mixins/variables – see section II)
│
├── html
│   ├── head.php (will load external scripts and stylesheets later via PHP include functions)
│   ├── navbar.php (if necessary; consult part III to learn about integrati
```

## Prompt 3

Please generate a template for a profile page for me as a software developer.
The layout should be responsive.

### Result

```html
<nav class="navbar bg-dark">
  <!-- Nav Bar Content -->
</nav>
<!-- Page Heading -->
<ol class="breadcrumb breadcrumb-primary mt-0">
  <li>
    <a href="#"><i class="icon icon-home"></i></a>
  </li>
  <li class="active">Profile</li>
</ol>
<!-- Profile Image -->
<div
  class="card rounded-lg shadow pl-8 py-4 flex justify-center align-items-center h-100 w-auto"
  id="profile-image"
>
  <!-- Profile Image Card Content -->
</div>

<!-- About Me Section -->
<section id="about-me" class="bg-light border px-4 py-4">
  <!-- About Me Card Content -->
</section>

<!-- Experience Section -->
<section id="experience" class="py-4">
  <!-- Experience Card Content -->
</section>

<!-- Education Section -->
<section id="education" class="py-4">
  <!-- Education Card Content -->
</section>

<!-- Skills Section -->
<section id="skills" class="py-4">
  <!-- Skills Card Content -->
</section>

<!-- Personal Interests Section -->
<section id="personal-interests" class="border px-4 py-4 mt-4">
  <!-- Personal Interests Card Content -->
</section>

<!-- Recent Works Section -->
<section id="recent-works" class="mt-4 border">
  <!-- Recent Work Card Content -->
</section>

<!-- Reach Out Section -->
<form action="" class="px-6 py-4 my-4 border rounded-md">
  <!-- Contact Form Content -->
</form>
```

Note that I added a action attribute for the contact form, assuming that you plan on implementing server-side processing, which involves submitting the data to a backend script rather than sending the form directly to email or performing client-side validation only.

You might want to replace <input> fields with the appropriate frontend libraries for each specific component, such as form-control classes from Bootstrap to match native browser appearances. Some elements require further customization based on your personal preferences and brand identity. This includes adding your avatar or uploading an image for your social media links. Also, consider integrating additional functionality provided by Boostrap components, such as the modal dialog box.
