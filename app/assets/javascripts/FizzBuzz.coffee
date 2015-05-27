window.numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 18, 22, 24, 25, 30, 35, 39, 45, 99]

#iterates through array 'numbers'
window.iterator = () ->
 checker i for i in numbers 

#Tests item in position i for FizzBuzzness
window.checker = (i) ->
  console.log(i)
  if i%15 == 0
    " fizzbuzz "
  else if i%5 == 0
    " buzz "
  else if i%3 == 0
    " fizz "
  else
    " none " 
