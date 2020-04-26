let str = "KiKdaola";

// In this challenge, the goal is recomposing scrambled strings made of two or more words.

// Every string has to be reversed not in its totality, but by vowels or consonants clusters in the order they are found; after splitting the string in groups, and reversing every group with more than a letter, you'll obtain the correct sequence:

// String = "KiKdaola"

// Separation vowels/consonants = K  i  Kd  ao  l  a

// Reversing the groups = K  i  dK  oa  l  a

// New string = KidKoala
// Now, you have to insert a space between the words. A word starts with a capital letter:

// String = "KidKoala"

// Result = "Kid Koala"
// Given a string, implement a function that returns, in turn, a new correct string, following the above instructions.

// Examples
// recompose("KiKdaola") ➞ "Kid Koala"

// recompose("BaosdrOCfanada") ➞ "Boards Of Canada"
// B  ao  sdr  O  Cf  a  n  a  d  a
// B  oa  rds  O  fC  a  n  a  d  a

// recompose("hCemicarBlohtesr") ➞ "Chemical Brothers"
// hC  e  m  i  c  a  rBl  o  ht  e  sr
// Ch  e  m  i  c  a  lBr  o  th  e  rs

function reconpose(string) {
  return string
          .match(/[aeiou]+|[^aeiou]+/gi)        //
          .map(v => [...v].reverse().join(""))
          .join("").match(/[A-Z][a-z]+/g).join(" ");
}
