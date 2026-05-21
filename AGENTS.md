# AGENTS.md

## Cursor Cloud specific instructions

### Repository Overview

This is a minimal repository containing two sample files:
- `helloworld.py` — A Python script that prints "Hello World"
- `index.jsp` — A JSP registration form (static HTML with JSP directives)

### Running the Application

- **Python script:** `python3 helloworld.py`
- **Serving the web page:** `python3 -m http.server 8080` from the repo root, then access `http://localhost:8080/index.jsp` in a browser. Note: the JSP directives won't be processed without a Java servlet container, but the HTML renders correctly in any browser.

### Notes

- No build system, package manager, linter, or test framework is configured.
- No external dependencies are required beyond Python 3 (pre-installed in the environment).
- There is no dedicated dev server or hot-reload setup.
