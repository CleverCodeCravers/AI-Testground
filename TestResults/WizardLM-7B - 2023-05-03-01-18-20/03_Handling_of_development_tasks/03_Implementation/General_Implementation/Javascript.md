# Javascript

## Prompt 1

Can you write me a small javascript application with nodejs:

- Write an npm library
- It should parse netscape cookies.

### Result

Sure, here's an example of how to write an npm library that parses Netscape cookies using Node.js:

First, you'll need to install the "cookie" module by running the following command in your terminal:

```
npm install cookie
```

Next, create a new file called "cookie.js" and add the following code:

```
const cookie = require('cookie');

function parseCookies(response) {
  const cookies = response.headers.cookie;
  const parsedCookies = cookies.split(';').map(cookieString => {
    const cookie = cookieString.trim().split('=');
    return {
      name: cookie[0],
      value: cookie[1]
    };
  });
  return parsedCookies;
}

module.exports = {
  parseCookies
};
```

This code defines a function called "parseCookies" that takes a response object as an argument and returns an array of parsed cookies. The function uses the "cookie" module to parse the cookies from the response headers.

Finally, you can install your library by running the following command in your terminal:

```
npm install --save cookie-parser
```

This will save the "cookie-parser" library to your project and make it available for use in your other projects.
