# Typescript

## Prompt 1

Can you write me a small typescript application with nodejs:

- Write an npm library
- It should parse netscape cookies.
- Use interfaces and types if necessary.

### Result

To create a TypeScript application that parses Netscape cookies, first make sure you have Node.js and npm installed on your system. Then, follow these steps:

1. Create a new folder for the project and navigate to it in the terminal.
2. Run `npm init -y` to create a package.json file with default settings.
3. Run `npm install typescript ts-node @types/node --save-dev` to install TypeScript, ts-node, and the Node.js type definitions as development dependencies.
4. Create a `tsconfig.json` file in the project root with the following content:

```json
{
  "compilerOptions": {
    "target": "ES2018",
    "module": "commonjs",
    "strict": true,
    "esModuleInterop": true,
    "outDir": "./dist",
    "rootDir": "./src"
  },
  "include": ["src/**/*.ts"],
  "exclude": ["node_modules"]
}
```

5. Create a `src` folder in the project root.
6. Inside the `src` folder, create a `netscape-cookie-parser.ts` file with the following content:

```typescript
export interface Cookie {
  domain: string;
  path: string;
  secure: boolean;
  expiration: Date | null;
  name: string;
  value: string;
}

export function parseNetscapeCookie(cookieLine: string): Cookie | null {
  const fields = cookieLine.split("\t");
  if (fields.length !== 7) {
    return null;
  }

  const [domain, flag, path, secure, expiration, name, value] = fields;

  return {
    domain,
    path,
    secure: secure === "TRUE",
    expiration: expiration === "0" ? null : new Date(Number(expiration) * 1000),
    name,
    value,
  };
}
```

7. Inside the `src` folder, create an `index.ts` file with the following content:

```typescript
import { parseNetscapeCookie, Cookie } from "./netscape-cookie-parser";

const sampleCookieLine =
  "example.com\tTRUE\t/path\tFALSE\t0\tcookie_name\tcookie_value";

const parsedCookie: Cookie | null = parseNetscapeCookie(sampleCookieLine);

console.log("Parsed cookie:", parsedCookie);
```

8. Add the following scripts to the `package.json` file:

```json
"scripts": {
  "build": "tsc",
  "start": "ts-node src/index.ts"
}
```

9. Run `npm run build` to compile the TypeScript files.
10. Run `npm run start` to execute the index.ts file using ts-node.

The example application demonstrates a simple Netscape cookie parser. When executed, it will parse a sample cookie line and print the result to the console. You can replace the sample cookie line with any valid Netscape cookie format.
