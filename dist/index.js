// Generated by CoffeeScript 1.9.3
var TransferToState, assign, fetchAndRemoveProp;

assign = require('object-assign');

fetchAndRemoveProp = function(currentObject, parsedPath) {
  var i, prop;
  i = 0;
  while (i < parsedPath.length - 1) {
    currentObject = currentObject[parsedPath[i]];
    ++i;
  }
  prop = currentObject[parsedPath[i]];
  delete currentObject[parsedPath[i]];
  return prop;
};

TransferToState = function(props, states, state) {
  var copyProps, key, path;
  if (state == null) {
    state = {};
  }
  copyProps = assign({}, props);
  console.log(copyProps);
  for (key in states) {
    path = states[key];
    state[key] = fetchAndRemoveProp(copyProps, path.split('.'));
  }
  props = copyProps;
  return state;
};

module.exports = TransferToState;
