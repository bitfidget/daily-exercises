
var rectangle = {
  length: 5,
  width: 5
};

// this function is a predicate - returns true or false
var isSquare = function(shape){
  //one way of checking this
  /*
  if(shape.length === shape.width){
    return true;
  } else {
    return false;
  }
  */
  //and another way (much neater)
  return shape.length === shape.width;
}

var area = function(shape){
  return shape.length * shape.width;
}

var perimeter = function(shape){
  return 2 * (shape.length + shape.width);
}

console.log(isSquare(rectangle));
console.log(area(rectangle));
console.log(perimeter(rectangle));