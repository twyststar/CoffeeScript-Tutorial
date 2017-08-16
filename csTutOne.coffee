# #Coffee script tutorial, following along with Derek Banas youTube video.
#
# ###
# Multiline Comment
# ###
###
 Conditionals line 231
 Existentials line 283
 Arrays line 301
 Loops line 361
 Functions line 423
 Objects line 466
 Classes line 489
###

### You compile to a JS file with the same name but the js extension with
 coffee --compile cstut.coffee
To auto compile use this in the terminal    coffee -wc *.coffee
###

# # ---------- INTRO ----------
# # There is no var or semicolons in CoffeeScript
#
# # Variables in CoffeeScript are not global by default
#
#
# # #Print to span
# # beforebegin will prepend, beforeend will append
#
name = "Bob"

# Get access to the element with the id csoutput
csOutput = document.getElementById("csoutput")
# Assign this string with the variable to csoutput
# Use double quotes for Interpolation
csOutput.innerHTML = "Hello #{name} <br>"

#
#
# #This will only print if the typeof is string. Switch to a number and nothing prints after 'Bob'
#
# aString = "I am a string"
#
# csOutput.insertAdjacentHTML('beforeend', 'aString is a String <br>') if typeof aString is 'string'
#
#
# #Prints largest and smallest numbers.
#
# largestNumber = Number.MAX_VALUE
# smallestNumber = Number.MIN_VALUE
#
# largestNumStr = "The largest number is #{largestNumber} <br>"
# smallestNumStr = "The smallest number is #{smallestNumber} <br>"
#
# csOutput.insertAdjacentHTML('beforeend',largestNumStr + '<br>')
#
# csOutput.insertAdjacentHTML('beforeend',smallestNumStr + '<br>')
#
#
# #*****In cs the boolean values are true, yes, or on, and false, no, or off.
#
# areYouHappy = off
#
# #Prints only if typeof is boolean
# csOutput.insertAdjacentHTML('beforeend',' areYouHappy is a boolean<br>') if typeof areYouHappy is 'boolean'
# #Prints only if boolean is true
# csOutput.insertAdjacentHTML('beforeend',' I am happy<br>') if areYouHappy is true
#
#
# #*************** Math ***********************
#
# csOutput.insertAdjacentHTML('beforeend', "5 + 2 = #{5 + 2} <br>")
# csOutput.insertAdjacentHTML('beforeend', "5 - 2 = #{5 - 2} <br>")
# csOutput.insertAdjacentHTML('beforeend', "5 * 2 = #{5 * 2} <br>")
# csOutput.insertAdjacentHTML('beforeend', "5 / 2 = #{5 / 2} <br>")
# csOutput.insertAdjacentHTML('beforeend', "5 % 2 = #{5 % 2} <br>")
#
#
# # CS has 16 digits of precision
# precisionTest = 0.1000000000000001;
#
# csOutput.insertAdjacentHTML('beforeend',
#   "Precision : #{precisionTest + 0.10000000000000011}<br>")
#
#
# #rounding- this example divides the 'balance' into monthly payments, ensuring that the result is not more than 2 decimal places.
#
# balance = 1563.87
# csOutput.insertAdjacentHTML('beforeend', "Monthly Payment = #{(balance/12).toFixed(2)} <br>")
#
# #Incrementing/Decrementing
# #If you use the ++ after, it prints then increments. If you place it before, it increments then prints. The first will print the original number then increment it, the second will print the result of the change...
#
# randNum = 5
#
# #prints 5 then increments to 6
# csOutput.insertAdjacentHTML('beforeend', "randNum++ = #{randNum++}<br>")
#
# #increments to 7, prints 7
# csOutput.insertAdjacentHTML('beforeend', "++randNum = #{++randNum}<br>")
#
# #prints 7 then decrements to 6
# csOutput.insertAdjacentHTML('beforeend', "randNum-- = #{randNum--}<br>")
#
# #increments to 5, prints 5
# csOutput.insertAdjacentHTML('beforeend', "--randNum = #{--randNum}<br>")
#
# #Inc/dec by amount
# csOutput.insertAdjacentHTML('beforeend', "randNum += 5: #{randNum += 5}<br>")
# csOutput.insertAdjacentHTML('beforeend', "randNum -= 5: #{randNum -= 5}<br>")
#
# #Order of operations
#
# #13
# csOutput.insertAdjacentHTML('beforeend', "3 + 2 * 5: #{3 + 2 * 5}<br>")
# #25
# csOutput.insertAdjacentHTML('beforeend', "(3 + 2) * 5: #{(3 + 2) * 5}<br>")
#
# # ******************************
# # Math properties and functions
#
# # The value of E
# csOutput.insertAdjacentHTML('beforeend',
#   "Math.E = #{Math.E}<br>")
#
# # PI
# csOutput.insertAdjacentHTML('beforeend',
#   "Math.PI = #{Math.PI}<br>")
#
# # Absolute value
# csOutput.insertAdjacentHTML('beforeend',
#   "Math.abs(-8) = #{Math.abs(-8)}<br>")
#
# # Cube root
# csOutput.insertAdjacentHTML('beforeend',
#   "Math.cbrt(1000) = #{Math.cbrt(1000)}<br>")
#
# # Round up
# csOutput.insertAdjacentHTML('beforeend',
#   "Math.ceil(6.45) = #{Math.ceil(6.45)}<br>")
#
# #Round down
# csOutput.insertAdjacentHTML('beforeend',
#   "Math.floor(6.45) = #{Math.floor(6.45)}<br>")
#
# #Round
# csOutput.insertAdjacentHTML('beforeend',
#   "Math.round(6.45) = #{Math.round(6.45)}<br>")
#
# # Logarithm- the inverse operation of exponentiation
# csOutput.insertAdjacentHTML('beforeend',
#   "Math.log(10) = #{Math.log(10)}<br>")
#
# csOutput.insertAdjacentHTML('beforeend',
#   "Math.log10(10) = #{Math.log10(10)}<br>")
#
# # Returns argument 1 to the power of argument 2
# csOutput.insertAdjacentHTML('beforeend',
#   "Math.pow(4,2) = #{Math.pow(4,2)}<br>")
#
# # Square root
# csOutput.insertAdjacentHTML('beforeend',
#   "Math.sqrt(1000) = #{Math.sqrt(1000)}<br>")
#
# # Generate a random number, max value followed by min value
# randNum = Math.floor(Math.random() * 100) + 1
#
# csOutput.insertAdjacentHTML('beforeend',
#   "Random Number = #{randNum}<br>")
#
#
# #************* Strings ******************
#
# # Concat
# fName = "Star"
# lName = "Start"
#
# csOutput.insertAdjacentHTML('beforeend', "I am " + fName + " " + lName + ", neophyte CoffeeScript-er. <br>")
#
# #String length
# longString = "That means the logarithm of a number is the exponent to which another fixed number, the base, must be raised to produce that number.                "
#
# csOutput.insertAdjacentHTML('beforeend', "LongString starts as: '#{longString}'<br>")
#
# csOutput.insertAdjacentHTML('beforeend', "LongString is #{longString.length} characters long. There are a bunch of spaces at the end that we can't see but they are counted.<br>")
#
# #Returns starting index of argument
# csOutput.insertAdjacentHTML('beforeend', "The word 'fixed' is at index  #{longString.indexOf("fixed")}. <br>")
#
# #Returns character at argument index
# csOutput.insertAdjacentHTML('beforeend', "The character at index 8 is  #{longString.charAt(8)}. <br>")
#
# #Grabs substring starting at and including index arg 1, up to but not including index arg 2
# csOutput.insertAdjacentHTML('beforeend', "The word at index 70 is  '#{longString.slice(70, 75)}'. <br>")
#
# #Grabs everything starting at and including index arg
# csOutput.insertAdjacentHTML('beforeend', "The string after index 70 is  '#{longString.slice(70)}'. <br>")
#
# #Replace part of the string
# longString = longString.replace("fixed", "fluid")
# csOutput.insertAdjacentHTML('beforeend', "If we replace 'fixed', the string is no longer true : '#{longString}'. <br>")
#
#
# #Split into word array, print one per line
# strArray = longString.split(" ")
#
# csOutput.insertAdjacentHTML('beforeend', "We can split it by word:<br>")
# for x in strArray
#   csOutput.insertAdjacentHTML('beforeend', "'#{x}'<br>")
#
# #Split into letter array
# strArray = longString.split("")
# csOutput.insertAdjacentHTML('beforeend', "Or by character: '#{strArray}'. <br>")
#
#
# #Replace letters or substrings globally
# longString = longString.replace(/l/g, "Q")
# csOutput.insertAdjacentHTML('beforeend', "We can replace all the l's with Q's using a little regex: '#{longString}'. <br>")
#
# longString = longString.replace(/the/g, "bob")
# csOutput.insertAdjacentHTML('beforeend', "Or all the thes with bobs using a little regex: '#{longString}'. <br>")
#
# #Strips extra whitespace
# longString = longString.trim()
#
# csOutput.insertAdjacentHTML('beforeend', "We can strip those extra spaces out, so LongString is now #{longString.length} characters long. <br>")
#
# strArray = longString.split(" ")
#
# csOutput.insertAdjacentHTML('beforeend', "If we split it by word again, all the end spaces are gone:<br>")
# for x in strArray
#   csOutput.insertAdjacentHTML('beforeend', "'#{x}'<br>")
#
# csOutput.insertAdjacentHTML('beforeend', "Capitalize it all: #{longString.toUpperCase()}<br>")
#
# csOutput.insertAdjacentHTML('beforeend', "Lowercase it all: #{longString.toLowerCase()}<br>")
#
#
# # ******** Conditionals *************
# # It works like JavaScript except with indentation and not curly brackets
# # Comparison operators are ==, !=, >, <, >=, <=
# # == and != in CS is the same as === and !== in JS
#
# age = 17
#
# #this checks to see if age id defined before executing
# if age?
#   csOutput.insertAdjacentHTML('beforeend', "The age comparator is #{age}<br>")
#
# if age >= 18
#   csOutput.insertAdjacentHTML('beforeend', "You can vote <br>")
#   #this is nested and will only execute if the above is true
#   if age >= 16 && age < 21
#     csOutput.insertAdjacentHTML('beforeend', "You can also drive, but you can't drink <br>")
#
#   if age >= 21
#     csOutput.insertAdjacentHTML('beforeend', "You can also drink <br>")
#
# else if age >= 16
#   csOutput.insertAdjacentHTML('beforeend', "You can drive <br>")
#
# else
#   csOutput.insertAdjacentHTML('beforeend', "You can't drive or vote <br>")
#
# # Using !, && and ||
# if !age > 4 || age > 65
#   csOutput.insertAdjacentHTML('beforeend', "You probably are not in school <br>")
# else if age > 5 && age < 18
#   schoolGrade = "Grade #{age - 5}"
#   csOutput.insertAdjacentHTML('beforeend', "You are probably in #{schoolGrade}. <br>")
#
# #Setting a variable to a condition. If you don't put the false in, it will return undefined for a false
# votingAge = if age > 18 then true else false
#
# csOutput.insertAdjacentHTML("beforeend", "Can vote: #{votingAge} <br>")
#
# childAge = age
#
# #Switch will break if else is not indented to same level as whens.
#
# switch childAge
#   when 5 then csOutput.insertAdjacentHTML('beforeend', "Go to kindergarten")
#
#   when 6,7,8,9,10 then csOutput.insertAdjacentHTML('beforeend', "Go to elementary.<br>")
#
#   when 10, 11, 12, 13, 14, 15, 16, 17 then csOutput.insertAdjacentHTML('beforeend', "Go to high school.<br>")
#
#   else csOutput.insertAdjacentHTML('beforeend', "Get a job.<br>")
#
# # Existential Operators
# # Can check for value, like if age? at the beginning of this section, or can act as if/else:
#
# #This will assign chicken as the value unless chicken is null/undefined, in which case it will assign the alternative. The question mark acts as an else.
# chicken = null
#
# chickenName = chicken ? "A chicken has no name"
# csOutput.insertAdjacentHTML('beforeend', chickenName + "<br>")
#
# #This will assign the value if none is there.
# hat = "Winter Hat"
# coat = "Winter Coat"
# gloves = null
#
# if hat? and coat?
#   csOutput.insertAdjacentHTML('beforeend', "#{hat ? 'I have no hat'}, #{coat ? 'I have no coat'}, #{gloves ? 'I have no gloves'}")

# *********** Arrays ***************
# randArray = ["Bob", false, 1234, 1.2]
#
# csOutput.insertAdjacentHTML('beforeend', "Index 2 of our random array is: #{randArray[0]}<br>")

# oneToTen = [1..10]
# tenToOne = [10..1]

# csOutput.insertAdjacentHTML('beforeend', "We can use ranges to make arrays. [1..10] = #{oneToTen} <br>")
#
# # csOutput.insertAdjacentHTML('beforeend', "We can do it backwards, and each on it's own line:<br>")
# # for x in tenToOne
# #   csOutput.insertAdjacentHTML('beforeend', "#{x}<br>")
#
# combinedArray = oneToTen + "," + tenToOne
#
# csOutput.insertAdjacentHTML('beforeend', "We can combine them with concatenation :<br> #{combinedArray}<br>")
#
# # #This is a neat trick that pushes all the values in the second array onto the first. Called a 'splat', the three dots indicate we want to soak up all the elements or values currently inside the array.
# #
# # oneToTen.push tenToOne...
# # csOutput.insertAdjacentHTML('beforeend', "Or by pushing one onto the other:<br>")
# # for x in oneToTen
# #   csOutput.insertAdjacentHTML('beforeend', "#{x}<br>")
#
# # csOutput.insertAdjacentHTML('beforeend', "We can convert it into a string :<br> '#{combinedArray.toString()}' <br>")
#
# #.filter is similar to a for each
# evensOnly = oneToTen.filter (x) -> x % 2 == 0
# csOutput.insertAdjacentHTML('beforeend', "Filtered for evens only: #{evensOnly} <br>")
#
# oddsOnly = oneToTen.filter (x) -> x % 2 != 0
# csOutput.insertAdjacentHTML('beforeend',
# "Filtered for odds only: #{oddsOnly} <br>")
#
# #Using the max/min Math functions and the slpat to find the highest and lowest numbers
# csOutput.insertAdjacentHTML('beforeend', "Max: #{Math.max oneToTen...} <br>")
# csOutput.insertAdjacentHTML('beforeend', "Min: #{Math.min oneToTen...} <br>")
#
# #.reduce to sum all numbers in array
# sumOfArray = oneToTen.reduce (x, y) -> x+y
# csOutput.insertAdjacentHTML('beforeend', "Sum : #{sumOfArray} <br>")
#
# #.reverse will..well..reverse it
# csOutput.insertAdjacentHTML('beforeend', "Reverse: #{oneToTen.reverse()}<br>")

# #Finding an object value in an array by index and key
# peopleArray = [
#   {
#     name: "Rats"
#     age: 36
#   },
#   {
#     name: "Ell"
#     age: 39
#   }
# ]
# csOutput.insertAdjacentHTML('beforeend', "First Name : #{peopleArray[0].name}")


# #************ More Loops *********
#
# oneToTen = [1..10]
# tenToOne = [10..1]
#
# #basic loop, printing each to it's own line
# for x in oneToTen
#   csOutput.insertAdjacentHTML('beforeend', "#{x}<br>")
#
# #Filter by looping, using isnt
# csOutput.insertAdjacentHTML('beforeend', " Filter while looping, for odds only between 1 and 10 <br>")
# for x in oneToTen when x%2 isnt 0
#   csOutput.insertAdjacentHTML('beforeend', " #{x}")
#
#
# #The 'is' works but irritates the terminal- throws error on compile
# csOutput.insertAdjacentHTML('beforeend', " <br>Filter while looping, for evens only between 50 and 100 <br>")
# for x in [50..100] when x%2 is 0
#   csOutput.insertAdjacentHTML('beforeend', " #{x}")
#
# csOutput.insertAdjacentHTML('beforeend', " <br>Count up by 3 between 20 and 40 <br>")
# for x in [20..40] by 3
#   csOutput.insertAdjacentHTML('beforeend', " #{x}")



# employees = [
#   "Bob"
#   "Rats"
#   "Ell"
# ]
#
# #looping through with index and element
# for employee, employeeIndex in employees
#   csOutput.insertAdjacentHTML('beforeend', "Index: " + employeeIndex + " Employee " + employee + "<br>")
#
# #looking for element in array
# if "Bob" in employees
#   csOutput.insertAdjacentHTML('beforeend', "I found Bob. <br>")
#
# #counting with a while loop
# i = 100
# while (i += 1) <= 110
#   csOutput.insertAdjacentHTML('beforeend', "i = #{i} <br>")
#
# #while loop that decrements?
# monkeys = 10
#
# while monkeys -= 1
#   csOutput.insertAdjacentHTML('beforeend', "#{monkeys} little monkeys, jumping on the bed. One fell off and broke his head. <br>")

# #Making a sort of do while loop
# x = 0
# loop
#   csOutput.insertAdjacentHTML('beforeend', "#{++x}<br>")
#   break unless x != 5


# #************ Functions *******************
# # With functions always move your functions above calling them in code
# # You define the function name with an equal followed by attributes and ->
#
#
# helloFunc = (name) ->
#   "Hello #{name}"
# csOutput.insertAdjacentHTML('beforeend', "#{helloFunc('another hello function')}<br>")
#
# getRandomNumber = ->
#   Math.floor(Math.random() * 100) + 1
# csOutput.insertAdjacentHTML('beforeend', "Here's a random number between 1-100: #{getRandomNumber()}<br>")
#
# sumNums = (vars...) ->
#   sum = 0
#   for x in vars
#     sum += x
#   return sum
# csOutput.insertAdjacentHTML('beforeend', "Add up 1+2+3+4+5 : #{sumNums(1,2,3,4,5)} <br>")
#
# #Giving a function a default value. If no arg, it will use default.
# movieRank = (stars = 1) ->
#   if stars <= 2
#     "Bad"
#   else
#     "Good"
# csOutput.insertAdjacentHTML('beforeend', "A movie rank default is : #{movieRank()} <br>")
# csOutput.insertAdjacentHTML('beforeend', "But if we give it the rank of 4 : #{movieRank(4)} <br>")
#
# #Recursive function
# factorial = (x) ->
#   return 0 if x < 0
#   return 1 if x == 0 or x == 1
#   return x * factorial(x-1)
# csOutput.insertAdjacentHTML('beforeend', "The factorial of 4 : #{factorial(4)} <br>")
#
# #what's going on above: (I still am not totally clear on it)
# # 1st: num = 4 * factorial(3) = 4 * 6 = 24
# # 2nd: num = 3 * factorial(2) = 3 * 2 = 6
# # 3rd: num = 2 * factorial(1) = 2 * 1 = 2


# #************* Objects ******************
#
# bob = {name:'Bob', age: 36, street: "123 Fake St"}
# #Above, same as below. Either syntax works.
# # bob = {
# #   name:'Bob'
# #   age: 36
# #   street: "123 Fake St"
# # }
#
# #Grab a value by key
# csOutput.insertAdjacentHTML('beforeend', "Name: #{bob.name}<br>")
#
# #Add a key:value pair to object
# bob.job = 'Showing up in code'
#
# #Cycle through the object
# for x, y of bob
#   csOutput.insertAdjacentHTML('beforeend', x + " is " + y + "<br>")



# ************ Class ****************

#Define default properties of class
class Animal
  name: "No Name"
  height: 0
  weight: 0
  sound: "No Sound"

  # @ means static, shared by all Objects
  @numOfAnimals: 0
  # Static methods- seems like a class method v object method in Ruby.
  #This one grabs the numOfAnimals.
  @getNumOfAnimals: () ->
    Animal.numOfAnimals

  # The constructor is called when the object is created
  # If we use @ with attributes the value is automatically assigned
  constructor: (name = "No Name", @height = 0, @weight = 0) ->

    # @ is like 'this' in other languages
    @name = name

    # You access static properties using the class name
    Animal.numOfAnimals++
  # A class function
  makeSound: ->
    "says #{@sound}"

  # Use @ to reference the object's properties
  # Use @ to call other methods of this object
  getInfo: ->
    "#{@name} is #{@height} in and weighs #{@weight} lb and #{@makeSound()}"


lorelai = new Animal()

lorelai.name = "Lorelai"
lorelai.height = 12
lorelai.weight = 12
lorelai.sound = "Mwraw!"

csOutput.insertAdjacentHTML('beforeend', "#{lorelai.getInfo()}<br>")

#Creating a class method outside of the class
Animal::isItBig = ->
  if @height >= 24
    "yes"
  else if @height < 24 and @weight > @height/2
    "Not big, but a little hefty."
  else
    "no"



csOutput.insertAdjacentHTML('beforeend', "Is Lorelai big? #{lorelai.isItBig()}<br>")

csOutput.insertAdjacentHTML('beforeend', "Number of animals: #{Animal.getNumOfAnimals()}<br>")

###
I'd like to figure out how to save an array of all objects in a class, and cycle through them, like Ruby .all and .each class methods.
###


#********* Inheritence **********

#Allows additional specificity and methods to be added to subclass, while still using all the methods and info of the super class.

class Dog extends Animal
  sound2: "No Sound"

  constructor: (name = "No Name", height = 0, weight = 0 ) ->
    #this calls the animal class, or 'super class' constructor
    super(name, height, weight)

  #Overwrite or add to superclass methods.
  #This one will call the super, and add an additional sound only this subclass has.
  makeSound: ->
    super + " and #{@sound2}"

sparky = new Dog ("Sparky")
sparky.height = 36
sparky.weight = 98
sparky.sound = "Wooof!"
sparky.sound2 = "Grrrrr"

csOutput.insertAdjacentHTML('beforeend', "#{sparky.getInfo()}<br>")
csOutput.insertAdjacentHTML('beforeend', "Is sparky big? #{sparky.isItBig()}<br>")
