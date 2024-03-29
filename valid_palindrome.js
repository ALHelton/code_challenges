// input: one string
// output: boolean

// PSEUDOCODE
// need a method that will take in a string
// need to take the string, split into an array of characters
// make a variable with all letters in the alphabet
// iterate through the new array of characters, if the character is a letter of the alphabet, shovel to new array
// take new array and join all characters back into one string
// will reverse the modified string
// will compare the the reversed and non-reversed strings and determine if they are the same
// can include alphanumeric characters - includes numbers

function is_palindrome(string1) {
  var alphabet = 'abcdefghijklmnopqrstuvwxyz0123456789';
  var new_string = ''
  for (let index = 0; index < string1.length; index++) {
    if (alphabet.includes(string1[index].toLowerCase())) {
      new_string += string1[index].toLowerCase()
    }
  }

  return new_string.split('').reverse().join('') === new_string;
}

console.log(is_palindrome('race a car'))
console.log(is_palindrome('A man, a plan, a canal: Panama'))
console.log(is_palindrome(' '))