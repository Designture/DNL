# (DNL) Do it in Natural Language

    1 Syntax
      1.1 Create a document
      1.2 Define a custom charset
      1.3 Meta data

## 1 Syntax

### 1.1 Create a document
To create a document you can use the follow syntax and the DNLPP
(DNL Pre-Processor) will convert it for HTML.

```
create a document named "<page name>"
```

The `<page name>` should be replaced by your page title.
Below we have an example to create a HTML page named "Home Page" and the output
of that example:

```
create a document named "Home Page".
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

### 1.2 Define a custom charset
The default charset is `UTF-8`, but in some cases you want use a diferente one
and you can do that using the `charset` notation:

```
create a document named "<page name>"
with charset "<charset>".
```

### 1.3 Meta data
To add meta data you can use the `meta data` notation:

```
create a document named "Home Page"
with meta data named "<meta data description>" with a value "<meta data value>".
```
