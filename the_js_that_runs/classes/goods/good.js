// Generated by CoffeeScript 2.4.1
(function() {
  var Good;

  Good = class Good {
    constructor(description) {
      this.description = description;
    }

    set_price(price, unit_of_measure) {
      this.price = price;
      this.unit_of_measure = unit_of_measure;
    }

    apply_taxes(tax_array) {
      var i, len, results, tax;
      results = [];
      for (i = 0, len = tax_array.length; i < len; i++) {
        tax = tax_array[i];
        results.push("sup");
      }
      return results;
    }

  };

}).call(this);
