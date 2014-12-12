# (DNL) Do it in Natural Language

    1. Syntax
      1.1 Create a document
      1.2. Meta data

## 1. Syntax

### 1.1. Create a document
When you want create a document you can use the follow syntax. The DNLPP
(DNL Pre-Processor) with convert it for HTML.

```
create a document named "<page name>"
```

The `<page name>` should be replaced by your page name. Below we are an example
to create a HTML page named "Home Page" and the output of that example:

```
create a document named "Home Page"
```

The expected output should be something like that:

```HTML
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Home Page</title>
  </head>

  <body></body>
</html>
```

### 1.2. Meta data
To add meta data you can use the `meta data` notation:

```
create a document named "Home Page"
with meta data named "description" with a value "A simple WebSite in DNL".
```
