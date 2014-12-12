# (DNL) Do it in Natural Language

Compiles DNL document definitions into HTML. DNT allows you define all your
HTML documents using natural language, like english. The people who create the
document don't need any type of knowledge about HTML.

The DNL have a pre-processor named DNLPP (or DNL Pre-Processor) who will
convert the DNL notation to HTML 5 files.

## Syntax

In this section you can find all implemented syntaxes and some other useful
information about creating a file in the DNL notation.

The DNL uses the bootstrap classes to simplify the style of your documents,
by default bootstrap CSS is used but what can be disabled putting
`disable bootstrap` inside document declaration.

### Create a document
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

### Define a custom charset
The default charset is `UTF-8`, but in some cases you want use a diferente one
and you can do that using the `charset` notation:

```
create a document named "<page name>"
with charset "<charset>".
```

### Meta data
To add meta data you can use the `meta data` notation:

```
create a document named "<page name>"
with meta data named "<meta data description>" with a value "<meta data value>".
```

### Link a stylesheet
HTML without some style, like CSS, is like you are accessing a page at the time
of the creation of the WWW. So, to link a file to a document you need to
put the follow line inside the document declaration.

```
create a document named "<page name>"
use stylesheet file "<relative path for .css file>".
```

### Link a script file

```
create a document named "<page name">
use script file "<relative path for .js file>".
```

### Create a div
The name of a div is equivalent to a HTML id, because that the name of a div
needs to be unique on the document.

```
create a document named "<page name>"
create a div named "<div name">.
```

### Container divs
A container divs is required to wrap document contents and house the grid system.
You may choose one of the two containers to use in your projects. Not that,
due to padding and more, neither container is nestable.

#### Simple container
Use simple container for a responsive fixed width container.

```
create a document named "<page name>"
create a container.
```

#### Fluid container
Use fluid container for a full width container, spanning the entire width of
your viewport.

```
create a document named "<page name>"
create a fluid conteiner.
```
