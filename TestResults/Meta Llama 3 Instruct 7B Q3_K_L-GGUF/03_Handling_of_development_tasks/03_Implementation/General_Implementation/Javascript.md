# Javascript

## Prompt 1

Can you write me a small javascript application with nodejs:

- Write an npm library
- It should parse netscape cookies.

### Result

Here is a basic Node.js project that parses Netscape cookies and creates an NPM library.

**Library Name:** `netscape-cookie-parser`

**Description:** A library for parsing Netscape cookie strings into a JSON object.

**Install:**

```bash
npm install netscape-cookie-parser
```

**Library Code:**

`index.js`:

```javascript
const cookieParser = (cookieString) => {
  const cookies = {};
  if (!cookieString) return cookies;

  // Split the cookie string by semicolons
  const cookieArray = cookieString.split(";");

  cookieArray.forEach((cookie) => {
    // Remove whitespace and trim the cookie string
    cookie = cookie.trim();

    // Find the '=' character to split the key-value pair
    const keyValue = cookie.split("=");
    const key = keyValue[0].trim();
    const value = keyValue[1];

    if (key) cookies[key] = value;
  });

  return cookies;
};

module.exports = cookieParser;
```

**Test:**

`test.js`:

```javascript
const assert = require("assert");
const cookieParser = require("./");

describe("cookie parser", () => {
  it("parses a simple cookie string", () => {
    const cookieString = "name=value; age=30";
    const cookies = cookieParser(cookieString);
    assert.deepEqual(cookies, { name: "value", age: "30" });
  });

  it("handles multiple cookies", () => {
    const cookieString = "name=value; age=30; foo=bar";
    const cookies = cookieParser(cookieString);
    assert.deepEqual(cookies, { name: "value", age: "30", foo: "bar" });
  });

  it("ignores invalid cookies", () => {
    const cookieString = "invalid-cookie-string;";
    const cookies = cookieParser(cookieString);
    assert.deepEqual(cookies, {});
  });
});
```

**Usage:**

You can use this library in your Node.js application like this:

```javascript
const cookieParser = require("netscape-cookie-parser");

const cookieString = "name=value; age=30";
const cookies = cookieParser(cookieString);

console.log(cookies); // { name: 'value', age: '30' }
```

This library uses a simple string manipulation approach to parse the Netscape cookie string into a JSON object. It splits the cookie string by semicolons, then iterates through each cookie, removing whitespace and trimming the string before parsing it into a key-value pair.

The test suite checks that the library correctly parses simple and multiple cookies, as well as ignores invalid cookies.

Feel free to modify or extend this library to suit your specific use case!
