/*The Recipe Card
Never forget another recipe!

Create an object to hold information on your favorite recipe. It should have properties for title (a string), servings (a number), and ingredients (an array of strings).
On separate lines (one console.log statement for each), log the recipe information so it looks like:
Mole
Serves: 2
Ingredients:
cinnamon
cumin
cocoa
*/

var recipeCard = new Object();

recipeCard.title = 'Mole';
recipeCard.servings = '2';
recipeCard.ingredients = ['cinnamon', 'cumin', 'cocoa'];

var showRecipe = function(recipeCard){
  console.log(recipeCard.title);
  console.log(recipeCard.servings);
  console.log('Ingreddients: ' + recipeCard.ingredients.join(', '));
  for (var i = 0; i < recipeCard.ingredients.length; i++){
    console.log(i, recipeCard.ingredients[i]);
  };
};

showRecipe(recipeCard);

//Joels version

var recipe = {
    title: 'Mole',
    servings: 2,
    ingredients: ['cumin', 'cinnamon', 'cocoa']
};

console.log(recipe.title);
console.log('Servings: ' + recipe.servings);
console.log('Ingredients:');
for (var i = 0; i < recipe.ingredients.length; i++) {
    console.log(recipe.ingredients[i]);
}
