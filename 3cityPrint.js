// Write a piece of code that loops through the object and prints the following to the console: BC has 3 main cities AB has 2 main cities
var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};

function cityCount(hash) {
  for (var i = 0; i < Object.keys(hash).length; i++) {
      console.log(Object.keys(hash)[i]+" has " + hash[Object.keys(hash)[i]].length + " main cities.");
  };
};

cityCount(majorCities);
