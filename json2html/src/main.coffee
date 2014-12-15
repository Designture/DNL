class Compiler
  constructor: (@parsed) ->

  buildAttributes: (attributes) ->
    result = ""

    if attributes == undefined
      return result

    for pair in attributes
      for key, value of pair
        result += " #{key}=\"#{value}\""

    return result

  compileElement: (element) ->
    result = "<" + element.type

    # Build the attributes
    result += this.buildAttributes element.attributes

    result += ">"

    # Build childrens
    if element.children != undefined
      for child in element.children
        result += this.compileElement child

    # Content
    if element.content != undefined
      result += element.content

    # Close the element
    result += "</" + element.type + ">"

  compile: () ->
    result = ""

    result = this.compileElement @parsed

    # Return compiled JSON
    result

compile = (parsed) ->
  parsed = JSON.parse parsed
  compiler = new Compiler parsed

  return compiler.compile()

exports.compile = compile
