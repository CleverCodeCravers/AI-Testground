# PHP

## Prompt 1

Please write a simple PHP page that lists a few articles and has a buy button.

When the button is pressed I should receive an email with the order data.

### Result

Here's an example of a simple PHP page that lists a few articles and has a buy button. When the button is pressed, it sends an email with the order data:

```php
<?php

if(isset($_POST['submit'])) {

    // Gather post data
    $article_name = $_POST['article_name'];
    $price = $_POST['price'];
    $quantity = $_POST['quantity'];
    $total = $price * $quantity;
    $email = $_POST['email'];

    // Set up email message
    $to = "your_email@example.com";
    $subject = "New Order for " . $article_name;
    $message = "Name: " . $article_name . "\r\n";
    $message .= "Price: $" . $price . "\r\n";
    $message .= "Quantity: " . $quantity . "\r\n";
    $message .= "Total: $" . $total . "\r\n";
    $message .= "Email: " . $email . "\r\n";

    // Send email
    mail($to, $subject, $message);

    // Display thank you message
    echo "<h2>Thank you for your order!</h2>";

} else {

    // List of articles
    $articles = array(
        array("name" => "Article 1", "price" => 10),
        array("name" => "Article 2", "price" => 20),
        array("name" => "Article 3", "price" => 30),
    );
?>

<!DOCTYPE html>
<html>
<head>
    <title>Shop</title>
</head>
<body>
    <h1>Shop</h1>
    <?php foreach($articles as $article) { ?>
        <h2><?php echo $article["name"]; ?></h2>
        <p>Price: $<?php echo $article["price"]; ?></p>
        <form method="post">
            <input type="hidden" name="article_name" value="<?php echo $article["name"]; ?>">
            <input type="hidden" name="price" value="<?php echo $article["price"]; ?>">
            <label>Quantity:</label>
            <input type="number" name="quantity" value="1" min="1" max="10">
            <label>Email:</label>
            <input type="email" name="email" required>
            <input type="submit" name="submit" value="Buy">
        </form>
    <?php } ?>
</body>
</html>

<?php } ?>
```

Note: This code is for demonstration purposes only and should not be used in production without proper security measures in place.
