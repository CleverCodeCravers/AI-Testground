# PHP

## Prompt 1

Please write a simple PHP page that lists a few articles and has a buy button.

When the button is pressed I should receive an email with the order data.

### Result

Sure thing! To build such a PHP page and implement an order form with a "Buy" button that sends an email notification when clicked, follow along below.

First things first, set up a development environment for yourself. You could install XAMPP or WAMP if you prefer working locally without setting up a web server.

Once ready, create a PHP file named order_form.php. Begin by adding some HTML markup to display a list of article titles and images. Then, add a contact form with a "Submit Order" button underneath. Afterward, create a function in PHP to send an email notification with the form contents.

Here's what this code might look like:
PHP Code (order_form.php)

```php
<?php
session_start(); // Start the session for managing user state across pages
?>
<html>
  <head>
    <title>Order Form</title>
  </head>
  <body>
    <?php
      $articles = [
        ["title" => "Product A", "image" => "<img src=\"articleA.jpg\" width=\"30%\">"],
        ["title" => "Product B", "image" => "<img src=\"articleB.jpg\" width=\"30%\">"],
        ["title" => "Product C", "image" => "<img src=\"articleC.jpg\" width=\"30%\">"]
      ];

      echo '<h1>Available Products</h1>';

      foreach ($articles as $product) {
        echo "<div><a href=\"#\"><img src=\"$product[image]\"></a>
";
        echo "$product[title]" . "\n";
      }

      // Display Contact Form with Submit Order Button
      if (isset($_POST['submit'])) :
        $_SESSION['message'] = "Your message was sent successfully.";
      ?>
      <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <label for="name">Name:</label><input type="text" id="name" name="name" required>


        <!-- More input elements for other product info -->

        <button type="submit">Submit Order</button>

        <p>* Denotes Required Field.</p>


      </form>
      <?php endif; ?>
      <script>alert('Form submitted via AJAX')</script>
    </body>
  </html>
```

To handle processing the form submission, we're going to include a JavaScript event listener to submit the form contents through AJAX using jQuery. Then, our PHP script can capture the post request and construct an ema
