// Write a function in JavaScript that takes in a number n and returns the first n even numbers.

function evenNum(n) {
  newArray = [];
    for (var i = 2; newArray.length < n; i+=2) {
      newArray.push(i);
    };
  return newArray;
};

evenNum(8);
