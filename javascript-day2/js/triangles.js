/*
Given the following a triangle object like the one below, write the following functions:
isEquilateral - Returns whether the triangle is equilateral or not
isIsosceles - Returns whether the triangle is isosceles or not
area - Calculates the area of the Triangle
isObtuse - Returns whether the triangle is obtuse or not
var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4
};
*/

var triangle = {
  sideA: 24,
  sideB: 30,
  sideC: 3
};

var isEquilateral = function(shape){
  return ( shape.sideA === shape.sideB ) && ( shape.sideA === shape.sideC );
}
console.log(isEquilateral(triangle));

var isIsosceles = function(shape){
  var sideArray = [shape.sideA, shape.sideB, shape.sideC]
  sideArray.sort()
  if ((sideArray[0] === sideArray[1]) && (sideArray[0] != sideArray[2])){
    return true
  } else if ((sideArray[1] === sideArray[2]) && (sideArray[0] != sideArray[2])){
    return true
  } else {
    return false
  }
};
console.log(isIsosceles(triangle));

//get perimeter
var perimeter = function(shape){
  return (shape.sideA) + (shape.sideB) + (shape.sideC);
};
console.log(perimeter(triangle));

//area = sqrt of halfPerimeter((halfPerimeter-sideA)(halfPerimeter-sideB)(halfPerimeter-sideC))
//get half perimeter (for area)
var phalf = function(shape){
  return perimeter(shape) / 2
};
console.log(phalf(triangle));

//get area
var area = function(shape){
  var rediculousCalculationNumber = phalf(shape) * ((phalf(shape) - shape.sideA) * (phalf(shape) - shape.sideB) * (phalf(shape) - shape.sideC));
  return Math.sqrt(rediculousCalculationNumber);
};
console.log(area(triangle));

//is obtuse?
var isObtuse = function(shape){
  var sideArray = [shape.sideA, shape.sideB, shape.sideC]
  sideArray.sort()
  return (sideArray[0]*sideArray[0]) + (sideArray[1]*sideArray[1]) < (sideArray[2]*sideArray[2])
}
console.log(isObtuse(triangle));

//and of course the super neat and tasty Joels version
/*
isEquilateral - Returns whether the triangle is equilateral or not
isIsosceles - Returns whether the triangle is isosceles or not
area - Calculates the area of the Triangle
isObtuse - Returns whether the triangle is obtuse or not
*/
// Prototype version
var Triangle = function (a, b, c) {
    this.sideA = a;
    this.sideB = b;
    this.sideC = c;
    this.isEquilateral = function () {
        // Via the transitive property.
        return this.sideA == this.sideB && this.sideA == this.sideC;
    };
    this.isIsoceles = function () {
        // Returns true if any two sides are equal.
        return this.sideA == this.sideB ||
            this.sideA == this.sideC ||
            this.sideB == this.sideC;
    };
    this.area = function () {
        // Via Heron's formula: http://www.mathopenref.com/heronsformula.html
        var q = (this.sideA + this.sideB + this.sideC) / 2;
        return Math.sqrt(q * (q - this.sideA) * (q - this.sideB) * (q - this.sideC));
    };
    this.isObtuse = function () {
        // Returns true is the square of one side exceeeds the sum of the squares
        // of the other two sides.
        var sq = function (n) {
            return n * n;
        }; // Helper function.
        return sq(this.sideA) > (sq(this.sideB) + sq(this.sideC)) ||
            sq(this.sideB) > (sq(this.sideA) + sq(this.sideC)) ||
            sq(this.sideC) > (sq(this.sideA) + sq(this.sideB));

    };
};

var triangle = new Triangle(3, 4, 4);

console.log(triangle.isEquilateral());
console.log(triangle.isIsoceles());
console.log(triangle.area());
console.log(triangle.isObtuse());
