# (DNL) Do it in Natural Language

Compiles DNL document definitions into HTML. DNT allows you define all your
HTML documents using natural language, like english. The people who create the
document don't need any type of knowledge about HTML.

The DNL have a pre-processor named DNLPP (or DNL Pre-Processor) who will
convert the DNL notation to HTML 5 files.

    1 Syntax
      1.1 Create a document
      1.2 Define a custom charset
      1.3 Meta data
      1.4 Link a stylesheet
      1.5 Link a script file

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
create a document named "<page name>"
with meta data named "<meta data description>" with a value "<meta data value>".
```

### 1.4 Link a stylesheet
HTML without some style, like CSS, is like you are accessing a page at the time
of the creation of the WWW. So, to link a file to a document you need to
put the follow line inside the document declaration.

```
create a document named "<page name>"
use stylesheet file "<relative path for .css file>".
```

### 1.5 Link a script file

```
create a document named "<page name">
use script file "<relative path for .js file>".
```
