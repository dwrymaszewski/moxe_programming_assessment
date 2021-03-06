// Generated by CoffeeScript 2.4.1
(function() {
  var Basket, Tax_Interface;

  Tax_Interface = require('./../data_interfaces/tax_interface').Tax_Interface;

  Basket = (function() {
    class Basket {
      add(item_to_add) {
        return this.items.push(item_to_add);
      }

      // remove: (item_to_remove)->
      // 	@items = @items.filter item -> item.name isnt item_to_remove.name
      show_contents() {
        var i, item, len, ref, results;
        ref = this.items;
        results = [];
        for (i = 0, len = ref.length; i < len; i++) {
          item = ref[i];
          results.push(console.log(item.get_description()));
        }
        return results;
      }

      checkout() {
        var i, item, len, ref;
        this.sub_total = 0;
        this.tax_total = 0;
        this.grand_total = 0;
        ref = this.items;
        for (i = 0, len = ref.length; i < len; i++) {
          item = ref[i];
          item.apply_taxes(Tax_Interface.get_all());
          this.sub_total += item.get_price().amount;
          this.tax_total += item.get_total_tax_price().amount;
        }
        return this.grand_total = this.sub_total + this.tax_total;
      }

      print_receipt(header) {
        var i, item, len, ref;
        console.log(header);
        ref = this.items;
        for (i = 0, len = ref.length; i < len; i++) {
          item = ref[i];
          console.log(item.get_description_with_taxes());
        }
        console.log(this.get_sales_tax_line());
        return console.log(this.get_total_line());
      }

      get_sales_tax_line() {
        return "Sales Taxes: " + this.tax_total;
      }

      get_total_line() {
        return "Total: " + this.grand_total;
      }

    };

    Basket.prototype.items = [];

    return Basket;

  }).call(this);

  exports.Basket = Basket;

}).call(this);
