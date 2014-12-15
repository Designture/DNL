var Compiler, compile;

Compiler = (function() {
  function Compiler() {}

  Compiler.prototype.contructor = function(dnl) {
    this.dnl = dnl;
  };

  Compiler.prototype.compile = function() {
    return {};
  };

  return Compiler;

})();

compile = function(dnl) {
  var compiler;
  compiler = new Compiler(dnl);
  return compiler.compile();
};

exports.compile = compile;
