// Generated by CoffeeScript 2.4.1
(function() {
  var Item;

  Item = class Item {
    constructor(good1, quantity = 1) {
      this.good = good1;
      this.quantity = quantity;
    }

    get_description() {
      if (this.description == null) {
        this.description = good.name + " at " + this.quantity * good.price.amount;
      }
      return this.description;
    }

    flag_imported() {
      return this.imported = true;
    }

  };

}).call(this);
