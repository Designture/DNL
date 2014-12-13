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
create a fluid container.
```

### Typography

#### Headings
The HTML supports six levels of headings. To create a heading you should use
the follow syntax.

```
create a heading "<text>".
```

By default DNLPP will generate a heading of level 1, but you can change that
with the follow code.

```
create a heading "<text>" of level 3.
```

Heading can contain a secondary text.

```
create a heading "<text>"
  with a secondary heading "<text>".
```

### Text

#### Paragraph

```
create a paragraph "<text>".
```

### Lead paragraph
Make a paragraph stand out.

```
create a lead paragraph "<text>".
```

### Inline text elements
Since it is sometimes necessary to manipulate certain words in a text, the DNL
implements a syntax for this type of manipulation. Multiple modifier can be
separated with `and` word.

```
create a paragraph
  "This is a /<manipulate options>/example// text!".
```

#### Marked text
For highlighting a piece of text due to its relevance in another context use
the `marker` modifier.

```
create a paragraph
  "This is a /marker/example// text!".
```

#### Strikethrough text
For indicating blocks of text that are no longer relevant use `strike` modifier.

```
create a paragraph
  "This is a /strike/example// text!".
```

#### Underlined text
To underline text use the `underline` modifier.

```
create a paragraph
  "This is a /underline/example// text!".
```


#### Small text
For de-emphasizing inline or blocks of text, use the `small` modifier.

```
create a paragraph
  "This is a /small/example// text!".
```

#### Bold
For emphasizing a snippet of text with a heavier font-weight.

```
create a paragraph
  "This is a /bold/example// text!".
```

#### Italics
For emphasizing a snippet of text with italics.

```
create a paragraph
  "This is a /italic/example// text!".
```

### Other things

#### Alignment modifiers
Easily realign text to components with `alignment` syntax.

```
create a paragraph
  with <left|center|right> alignment.
```

#### Transformation syntax
Transform text in components with text capitalization syntaxes.

```
create a paragraph
  "This is a example text!"
  transform text to <lowercase|uppercase|capitalize>.
```

#### Add css classes
To add one or more classes to any element use can use the `class` or `classes`
syntax.

```
create a div named "<identifier>"
  add class "<class or classes>".
```

#### Add an identifier
You may need give an unique identifier to an element to do that DNL have the
`identifier` syntax.

For example, you can create a div without the `named` syntax.
```
create a div
  add identifier "<identifier>".
```

#### Add other attributes
Is natural you need other attributer, for that we have the `attribute` syntax.

```
create a div
  add attribute "<attribute>" with value "<value>".
```

To reduce the text in case you have many attributes you can use `attributes`
syntax.

```
create a div
  add attributes <attribute and attribute => value>.
```

For example, this declaration:

```
create a div
  add attribute "mainView and role => 'exampleRole'".
```

Should produce:

```HTML
<div mainView="" role="exampleRole">
</div>
```

### Forms
It's time to talk about forms, this is an important part of all web applications.

#### Form syntax
To create form use:

```
create a form
  <declare form fields>.
```

#### Declare a field

```
with a <field type> named "<field name>".
```

#### Basic Example
In the following example we will declare a very simple login form.

```
create a form
  with an email field named "Email address" and
    add an identifier "userEmail" and
    add an attribute placeholder with value "Enter email"
  with a password field named "Password" and
    add an identifier "userPassword" and
    add an attribute placeholder with value "Password"
  with a checkbox field named "Remember Me" and
    add an identifier "userRemember"
  with a submit button named "Submit".
```

The above code will produce the following HTML:

```HTML
<form role="form">
  <div class="form-group">
    <label for="userEmail">Email</label>
    <input type="email" class="form-control" id="userEmail" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="userPassword">Password</label>
    <input type="password" class="form-control" id="userPassword" placeholder="Password">
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox"> Remember Me
    </label>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
```
