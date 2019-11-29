// Generated by CoffeeScript 2.4.1
(function() {
  var Item;

  Item = class Item {
    constructor(good, quantity = 1) {
      var ref;
      this.good = good;
      this.quantity = quantity;
      this.taxes_applied = {};
      if (((ref = this.good) != null ? ref.price : void 0) != null) {
        this.set_price();
      } else {
        throw "A priced Good is required to create an Item";
      }
    }

    get_description() {
      if (this.description == null) {
        this.description = this.good.name + " at " + this.get_price().amount;
      }
      return this.description;
    }

    get_description_with_taxes() {
      if (this.description_with_taxes == null) {
        this.description_with_taxes = this.good.name + ": " + this.get_price_amount_with_taxes();
      }
      return this.description_with_taxes;
    }

    set_price() {
      return this.price = {
        amount: this.quantity * this.good.price.amount,
        currency: this.good.price.currency
      };
    }

    get_price() {
      return this.price;
    }

    get_price_amount_with_taxes() {
      console.log(this.get_price().amount);
      console.log(this.get_total_tax_price().amount);
      return this.get_price().amount + this.get_total_tax_price().amount;
    }

    get_total_tax_price() {
      var i, len, ref, tax_price;
      this.total_tax_price = {
        amount: 0,
        currency: this.get_price().currency
      };
      ref = Object.values(this.taxes_applied);
      for (i = 0, len = ref.length; i < len; i++) {
        tax_price = ref[i];
        this.total_tax_price.amount += tax_price.amount;
      }
      return this.total_tax_price;
    }

    flag_imported() {
      return this.imported = true;
    }

    apply_taxes(taxes) {
      var i, len, results, tax;
      results = [];
      for (i = 0, len = taxes.length; i < len; i++) {
        tax = taxes[i];
        if (tax.should_apply(this)) {
          results.push(this.apply_tax(tax));
        } else {
          results.push(void 0);
        }
      }
      return results;
    }

    // tax_price = tax.get_tax_price @price
    apply_tax(tax) {
      var tax_price;
      console.log("what be tax", tax);
      console.log("what taxes be applied", this.taxes_applied);
      if (this.taxes_applied[tax.name] != null) {
        throw `The tax ${tax.name} has already been applied to this item`;
      } else {
        tax_price = tax.get_tax_price(this.price);
        return this.taxes_applied[tax.name] = tax_price;
      }
    }

    remove_tax(tax) {
      return delete this.taxes_applied[tax.name];
    }

  };

  exports.Item = Item;

}).call(this);
