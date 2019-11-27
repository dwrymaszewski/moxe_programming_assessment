// Generated by CoffeeScript 2.4.1
(function() {
  var Good;

  Good = (function() {
    var default_currency, ensure_a_currency;

    class Good {
      constructor(name, price, unit_of_measure) {
        this.name = name;
        this.price = price;
        this.unit_of_measure = unit_of_measure;
        ensure_a_currency();
      }

    };

    ensure_a_currency = function() {
      if (typeof this.price === 'number') {
        return this.price = {
          amount: this.price,
          currency: default_currency
        };
      }
    };

    default_currency = "USD";

    return Good;

  }).call(this);

  exports.Good = Good;

}).call(this);
