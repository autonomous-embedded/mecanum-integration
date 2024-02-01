# Documentation Generation

The documentation is generated using [Docsify](https://docsify.js.org/#/). The documentation is generated from the Markdown files located in the repository as well as in submodules.

## Installation
To generate the documentation, you need to install the Docsify CLI tool. To install the Docsify CLI tool, run the following command:
```bash
npm i docsify-cli -g
```

## Generation
To generate the documentation, run the following command in the root directory of the mecanum-integration repository:
```bash
docsify serve .
```

## Viewing the Documentation
To view the documentation, open the URL listed in the terminal output after running the `docsify serve .` command in your browser. E.g.:
```bash
❯ docsify serve .

Serving /home/npluta/repositories/cps/embedded-2/mecanum-integration now.
Listening at http://localhost:40299
```
