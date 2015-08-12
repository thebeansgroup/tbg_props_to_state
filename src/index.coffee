assign  = require('object-assign')
# Find value and remove from Object
#
# @param [Object] currentObject Component properties
# @param [Array] parsedPath parts of desired path
# @return [All the things] value of removed property
#

fetchAndRemoveProp = (currentObject,  parsedPath) ->
  i = 0
  while i < parsedPath.length - 1
    currentObject = currentObject[parsedPath[i]]
    ++i
  prop = currentObject[parsedPath[i]]
  delete currentObject[parsedPath[i]]
  return prop


# Create state object from properties and clean up after ourselves
#
# @param [Object] props Component properties
# @param [Object] states Object of properties we want to tranfer
# @option states [String] Path to property. Key also used as key for new state
# @param [Object] state Default state object to extend
# @return [Object] New state object
#

TransferToState = (props, states, state = {})->
  copyProps = assign({}, props)
  state[key] = fetchAndRemoveProp(copyProps, path.split('.')) for key,path of states
  props = copyProps
  return state


module.exports =  TransferToState
