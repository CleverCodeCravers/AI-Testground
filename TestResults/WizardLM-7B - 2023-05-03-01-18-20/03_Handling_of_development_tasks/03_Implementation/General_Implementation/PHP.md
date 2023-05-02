# PHP

## Prompt 1

Please write a simple PHP page that lists a few articles and has a buy button.

When the button is pressed I should receive an email with the order data.

### Result

```php
<?php
// Define the article titles and prices
$articles = array(
    "Article 1" => 10.99,
    "Article 2" => 12.99,
    "Article 3" => 8.99
);
// Define the email settings
$to = "youremail@example.com";
$subject = "New Order";
$message = "Order Details:\n\n";
// Loop through the article titles and prices
foreach ($articles as $title => $price) {
    $message .= $title . ": $" . $price . "\n";
}
// Send the email
mail($to, $subject, $message);
?>

<!DOCTYPE html>
<html>
<head>
    <title>My Articles</title>
</head>
<body>
    <h1>My Articles</h1>
    <p>Here are some articles for sale:</p>
    <ul>
        <li><a href="">Article 1</a> - $10.99</li>
        <li><a href="">Article 2</a> - $12.99</li>
        <li><a href="">Article 3</a> - $8.99</li>
    </ul>
    <p>Buy now and receive an email with your order details!</p>
    <form action="order.php" method="post">
        <input type="submit" value="Buy Now">
    </form>
</body>
</html>
```
