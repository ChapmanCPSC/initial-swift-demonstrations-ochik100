// Playground - noun: a place where people can play

import UIKit

var str = "Hello, there. This is Assignment 0."

print(str)

// Extensions
extension Double
{
    func tip15() -> Double
    {
        return self * 1.15
    }
}

var testTip = 100.00

// String interpolation
print("Total is $\(testTip)")
print("Total with tip is $\(testTip.tip15()).")

// Implicit Variable
var implicit = 1

// Explicit Variable
var explicit : Int = 2

// Enums
enum PaymentType
{
    case Cash
    case Debit
    case Credit
    case Check
}

let paymentCash = PaymentType.Cash

var paymentCredit : PaymentType
paymentCredit = .Credit

// Generate random number
let random = rand()

var divisibleBy5 : Bool

if random % 5 == 0
{
    divisibleBy5 = true
}
else
{
    divisibleBy5 = false
}

// Computer Initializer
var divisibleBy10 : Bool =
{
    if random % 10 == 0
    {
        return true
    }
    else
    {
        return false
    }
}()

// Classes
class Bill
{
    private var _total = 0.00
    var total : Double
    {
        get
        {
            return self._total
        }
        set
        {
            if newValue < 0.01
            {
                print("Error with bill.")
            }
            else
            {
                self._total = newValue
            }
        }
    }
    
    var customerName : String = "nameless"
    {
        willSet
        {
            print("About to set the customer name as \(newValue)")
        }
        didSet
        {
            print("Just set the name from \(oldValue) to \(self.customerName))")
        }
        
    }
    
    // Default Parameter
    func calculateTax(percent : Double = 0.08) -> Double
    {
        return self.total * percent
    }
    
    // Basic function
    func calculateTip() -> Double
    {
        return self.total * 0.15
    }
    
    func calculateBill() -> Double
    {
        return self.total + calculateTax() + calculateTip()
    }
}

var theBill = Bill()
theBill.total = 25.50
theBill.customerName = "Kelly"
print("\(theBill.customerName), your total was $\(theBill.total), and with tax and tip the bill is $\(theBill.calculateBill()).")

// Functions as arguments
func printCalculation(function : (Int, Int) -> Int, _ x : Int, _ y : Int)
{
    print("Answer: \(function(x, y))")
}

func add(x : Int, y : Int) -> Int
{
    return x + y
}

printCalculation(add, 10, 5)

// Anonmyous Function
let anonymous =
{
    (x : Int) -> Int in
    return x*x
}

func square(function : (x : Int) -> Int) -> Int
{
    return function(x : 7)
}

square(anonymous)

// inout parameters
func receiver(inout x : String)
{
    x = "after!"
}

var x = "before"
print(x)
receiver(&x)
print(x)

// Variadic Parameters
func numbers(nums : Int ...)
{
    for i in nums
    {
        print(i)
    }
}

numbers(1, 5, 6, 3, 7)

// Range
let range = 0...9

// Array
let array = [1, 3, 5, 7, 9, 11, 13, 15]
print(array)

// Tuples
for(index, elem) in array.enumerate()
{
    print("\(index) * array[\(index)] = \(index) * \(elem) = \(index*elem)")
}














