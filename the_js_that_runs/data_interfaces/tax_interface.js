// Generated by CoffeeScript 2.4.1
(function() {
  var Tax_Interface;

  Tax_Interface = class Tax_Interface {
    static insert(tax) {
      return global.all_taxes[tax.name] = tax;
    }

    static find(tax_name) {
      return global.all_taxes[tax_name];
    }

    static get_all() {
      return global.all_taxes;
    }

  };

  exports.Tax_Interface = Tax_Interface;

}).call(this);
