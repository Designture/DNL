var Compiler, compile;

Compiler = (function() {
  function Compiler(parsed) {
    this.parsed = parsed;
  }

  Compiler.prototype.buildAttributes = function(attributes) {
    var key, pair, result, value, _i, _len;
    result = "";
    if (attributes === void 0) {
      return result;
    }
    for (_i = 0, _len = attributes.length; _i < _len; _i++) {
      pair = attributes[_i];
      for (key in pair) {
        value = pair[key];
        result += " " + key + "=\"" + value + "\"";
      }
    }
    return result;
  };

  Compiler.prototype.compileElement = function(element) {
    var child, result, _i, _len, _ref;
    result = "<" + element.type;
    result += this.buildAttributes(element.attributes);
    result += ">";
    if (element.children !== void 0) {
      _ref = element.children;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        child = _ref[_i];
        result += this.compileElement(child);
      }
    }
    if (element.content !== void 0) {
      result += element.content;
    }
    return result += "</" + element.type + ">";
  };

  Compiler.prototype.compile = function() {
    var result;
    result = "";
    result = this.compileElement(this.parsed);
    return result;
  };

  return Compiler;

})();

compile = function(parsed) {
  var compiler;
  parsed = JSON.parse(parsed);
  compiler = new Compiler(parsed);
  return compiler.compile();
};

exports.compile = compile;
