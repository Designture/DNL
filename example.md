```
create a document named "Example"
with meta data named "description" with a value "A simple website in DNL"
create a container and
	create a heading "Example" and
	create a paragraph "This is an example text.".
```

## Faz uma primeira conversão para JSON

```JSON
{
  type: 'html',
  children: [
    {
      type: 'head',
      children: [
        {
          type: 'meta',
          attributes: [
            {
              charset: 'UTF-8'
            }
          ]
        },
        {
          type: 'meta',
          attributes: [
            {
              name: 'description',
              content: 'A simple website in DNL'
            }
          ]
        },
        {
          type: 'title',
          content: 'Example'
        },
        {
          type: 'body',
          children: [
            {
              type: 'div',
              attributes: {
                class: 'container'
              },
              children: [
                {
                  type: 'h1',
                  container: 'Example'
                },
                {
                  type: 'p',
                  container: 'This is an example text.'
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
```

## Na segunda passagem converte para HTML

```HTML
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta name="description" content="A simple website in DNL" />

		<title>Example</title>
	</head>

	<body>
		<div class="container">
			<h1>Example</h1>

			<p>This is an example text.</p>
		</div>
	</body>
</html>
```
