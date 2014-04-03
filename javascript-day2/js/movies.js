/*
The Movie Database
It's like IMDB, but much much smaller!

Create an object to store the following information about your favorite movie: 
title (a string), duration (a number), and stars (an array of strings).
Create a function to print out the movie information like so: 
"Puff the Magic Dragon lasts for 30 minutes. Stars: Puff, Jackie, Living Sneezes."
*/

var favouriteMovie = new Object;

favouriteMovie.title = "Herbie goes to Monte Carlo";
favouriteMovie.duration = "1.45";
favouriteMovie.stars = ['herbie', 'that man who drives herbie'];

var showMovie = function(favouriteMovie){
  console.log(favouriteMovie.title);
  console.log(favouriteMovie.duration);
  console.log('it stars ' + favouriteMovie.stars.join(', '));
  for (var i = 0; i < favouriteMovie.stars.length; i++){
    console.log(i, favouriteMovie.stars[i]);
  };
};

showMovie(favouriteMovie);

