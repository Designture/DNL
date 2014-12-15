class Compiler
  contructor: (@dnl) ->

  compile: () ->
    return {}

compile = (dnl) ->
  # Create a instance of Compiler and
  # pass the dnl file content
  compiler = new Compiler dnl

  # Return resulted json
  return compiler.compile()

# Export compile
exports.compile = compile
