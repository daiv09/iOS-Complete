/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstDecimal: Double = 3.14
var secondDecimal: Float = 3.14
// Clicking Option
//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse: Bool
//firstDecimal=trueOrFalse
print("The above statement will throw a compile error cause we are assigning a float variable by a bool value")
//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
//var stringVal: String=firstDecimal
print("The above statement will throw a compile error cause we are assigning a string variable by a decimal value")
//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
//var wholeNum: Int=firstDecimal
print("The above statement will throw a compile error cause we are assigning a Int variable by a Decimal value")
/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
