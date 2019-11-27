// Generated by CoffeeScript 2.4.1
(function() {
  var Exclusive_Tax, Tax;

  Tax = require('./tax').Tax;

  Exclusive_Tax = class Exclusive_Tax extends Tax {
    set_exclusions(exclusions) {
      this.exclusions = exclusions;
    }

    should_apply(item) {
      var apply_it, criterion, i, len, ref;
      apply_it = true;
      ref = this.exclusions;
      for (i = 0, len = ref.length; i < len; i++) {
        criterion = ref[i];
        if (item.good[criterion] === true) {
          apply_it = false;
          break;
        }
      }
      return apply_it;
    }

  };

  exports.Exclusive_Tax = Exclusive_Tax;

}).call(this);
