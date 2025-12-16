# HTML Tag Cleaner

This project contains a shell script `html_cleaner.sh` designed to clean up HTML files by removing specific tags and formatting.

## Features

-   Removes `<script>` tags and their content.
-   Removes inline CSS within `style` attributes.
-   Deletes empty lines.
-   Adds a meta comment at the beginning of the file.
-   Appends a footer to the end of the file.

## Usage

1.  Make sure the script is executable:
    ```bash
    chmod +x html_cleaner.sh
    ```

2.  Run the script with an input HTML file:
    ```bash
    ./html_cleaner.sh input.html
    ```

    The cleaned output will be saved to `cleaned_input.html`.

## Example

**Input (`input.html`):**
```html
<html>
<script>alert('hello');</script>
<body style="color: red;">
    <p>text</p>

</body>
</html>
```

**Output (`cleaned_input.html`):**
```html
<!-- HTML Cleaned by Samarth Devadiga 119 -->
<html>

<body>
    <p>text</p>
</body>
</html>
<footer>Cleaned by HTML Cleaner Script</footer>
```
