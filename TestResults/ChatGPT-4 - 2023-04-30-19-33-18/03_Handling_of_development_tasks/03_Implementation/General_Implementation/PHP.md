# PHP

## Prompt 1

Please write a simple PHP page that lists a few articles and has a buy button.

When the button is pressed I should receive an email with the order data.

### Result

Here's a simple PHP page that displays a list of articles with a buy button. When the button is pressed, an email is sent with the order data. Replace `your@email.com` with your actual email address to receive the emails.

```php
<!DOCTYPE html>
<html>
<head>
    <title>Simple Article Store</title>
</head>
<body>
    <?php
        if (isset($_POST['articleId'])) {
            $articleId = $_POST['articleId'];
            $articleTitle = $_POST['articleTitle'];

            $to = "your@email.com";
            $subject = "New Order";
            $message = "You have received a new order for Article ID: {$articleId}, Title: {$articleTitle}.";
            $headers = "From: noreply@example.com";

            mail($to, $subject, $message, $headers);
            echo "<p>Order placed successfully!</p>";
        }
    ?>

    <h1>Articles</h1>
    <?php
        $articles = [
            ["id" => 1, "title" => "Article 1", "price" => 15],
            ["id" => 2, "title" => "Article 2", "price" => 20],
            ["id" => 3, "title" => "Article 3", "price" => 25],
        ];

        echo "<ul>";
        foreach ($articles as $article) {
            echo "<li>";
            echo "ID: {$article['id']} - Title: {$article['title']} - Price: \${$article['price']}";
            echo "<form method='post'>";
            echo "<input type='hidden' name='articleId' value='{$article['id']}'>";
            echo "<input type='hidden' name='articleTitle' value='{$article['title']}'>";
            echo "<input type='submit' value='Buy'>";
            echo "</form>";
            echo "</li>";
        }
        echo "</ul>";
    ?>
</body>
</html>
```

Save this code in a PHP file (e.g., `articles.php`) and upload it to your web server. Make sure your server is configured to send emails using the `mail()` function.
