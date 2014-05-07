$(document).ready(function(){

// set up an array of alphabetical letters
var alphabet = _.range(65, 65 + 26).map(function(i){
  return String.fromCharCode(i)
});

// set up an array of numbers to choose from
var numbers = _.range(100, 1000);

// set up the factory
var robotFactory = function () {
  var robot = {
    instructionCount = 0,
    assignName: function () {
      this.instructionCount++;
      if (this.name){
        return this;
      }
      var letterCode = _.sample(alphabet, 2).join('');
      var numberCode = _.sample(numbers);
      this.name = letterCode + numCode;
      return this;
    },
    reset: function () {
      this.instructionCount++;
      this.name = '';
    }

  }   
  return robot;
};

var robot = robotFactory();

});