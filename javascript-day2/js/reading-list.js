/*
The Reading List
Keep track of which books you read and which books you want to read!

Create an array of objects, where each object describes a book and has properties for the title (a string), 
author (a string), and alreadyRead (a boolean indicating if you read it yet).
Iterate through the array of books. For each book, log the book title and book author like so: 
"The Hobbit by J.R.R. Tolkien".
Now use an if/else statement to change the output depending on whether you read it yet or not. 
If you read it, log a string like 'You already read "The Hobbit" by J.R.R. Tolkien', and if not, 
log a string like 'You still need to read "The Lord of the Rings" by J.R.R. Tolkien.'
*/

var readingList = [
  {title:"The Hobbit", author:"J.R.R. Tolkien", alreadyRead:true},
  {title:"American Gods", author:"Neil Gaiman", alreadyRead:true},
  {title:"The Hitchhikers Guide to the Galaxy", author:"Douglas Adams", alreadyRead:false}
];

console.log(readingList[1]);

for (var i = 0; i < readingList.length; i++){
  console.log(i, readingList[i].title);
  console.log(i, readingList[i].author);
  console.log(i, readingList[i].alreadyRead);
};

console.log("books already read")
for (var i = 0; i < readingList.length; i++){
  if (readingList[i].alreadyRead == true) {
    console.log(i, readingList[i].title);
    console.log(i, readingList[i].author);
  };
};
console.log("books not yet read")
for (var i = 0; i < readingList.length; i++){
  if (readingList[i].alreadyRead == false) {
    console.log(i, readingList[i].title);
    console.log(i, readingList[i].author);
  };
};

//joels solution

var books = [{
    title: 'The Design of EveryDay Things',
    author: 'Don Norman'
}, {
    title: 'The Most Human Human',
    author: 'Brian Christian',
    alreadyRead: true
}];

for (var i = 0; i < books.length; i++) {
    var book = books[i];
    var bookInfo = book.title + ' by ' + book.author;
    if (book.alreadyRead) {
        console.log('You already read ' + bookInfo);
    } else {
        console.log('You still need to read ' + bookInfo);
    }
}
