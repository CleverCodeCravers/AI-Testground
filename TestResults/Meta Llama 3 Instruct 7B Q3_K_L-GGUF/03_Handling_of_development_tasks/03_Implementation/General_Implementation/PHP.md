# PHP

## Prompt 1

Please write a simple PHP page that lists a few articles and has a buy button.

When the button is pressed I should receive an email with the order data.

### Result

Here's a simple example using HTML, CSS, and PHP:

**index.php**

```php
<?php
// Configuration
$email = 'your-email@example.com';
$db = mysqli_connect('localhost', 'username', 'password', 'database');

if (!$db) {
    die('Connection failed: ' . mysqli_error($db));
}

// Get articles from database
$query = "SELECT * FROM articles";
$result = mysqli_query($db, $query);

// Create an array to store the articles
$articles = array();
while ($row = mysqli_fetch_assoc($result)) {
    $articles[] = $row;
}
mysqli_free_result($result);
$db->close();

// Check for form submission
if (isset($_POST['buy'])) {
    // Get the article ID and quantity from the form
    $article_id = $_POST['article_id'];
    $quantity = $_POST['quantity'];

    // Send an email with the order data
    $subject = 'New Order';
    $message = "Order details:\n";
    $message .= "Article ID: " . $article_id . "\n";
    $message .= "Quantity: " . $quantity . "\n";

    mail($email, $subject, $message, "From: your-email@example.com");

    // Display a success message
    echo 'Order placed successfully!';
}

// List the articles and their buy buttons
foreach ($articles as $article) {
    echo "<h2>" . $article['title'] . "</h2>";
    echo "<p>" . $article['description'] . "</p>";
    echo "<form method='post'>";
    echo "<input type='hidden' name='article_id' value='" . $article['id'] . "'>";
    echo "<label>Quantity:</label><br>";
    echo "<input type='number' name='quantity' required>";
    echo "<button type='submit' name='buy'>Buy</button>";
    echo "</form>";
}
?>

<style>
    /* Add some basic styling for the page */
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
    }
    h2 {
        color: #00698f;
    }
</style>
```

**database schema**

```sql
CREATE TABLE articles (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    description TEXT
);
```

**How it works**

1. The HTML page lists a few articles with their titles, descriptions, and buy buttons.
2. When the user clicks a buy button, the form is submitted with the article ID and quantity as hidden inputs.
3. The PHP script checks for the form submission and sends an email to the configured email address with the order data (article ID and quantity).
4. The script then displays a success message to the user.

**Note**

- This is a very basic example, you may want to add more functionality such as validating form inputs, handling errors, and storing orders in a database.
- You'll need to replace `your-email@example.com`, `username`, `password`, and `database` with your actual email address and database credentials.
- The `mail()` function is used to send the email. This function may not work on some servers due to security restrictions.
