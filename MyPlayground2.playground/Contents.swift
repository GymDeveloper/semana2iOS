import UIKit

var greeting = "Hello, playground"
// VAR LET
/*
 * VAR => Es la forma de declarar variable que pueden mutar
 * LET => Es la forma de declarar variable NO que pueden mutar
 */
var name = "Pepito"
let lastName = "Zapata"

name = "Juancito"

// Optional
var salary: Float
var fullName: String
var age: Int8

// lastName = "Rojas"
// Operations
let num1:Float = 1.6
let num2:Float = 2.6
let sum = num1 + num2
print(sum)

// Concatenacion
let stringName: String = "Juancito Luchito"
let stringLastName: String = "Zapata"
print("Mi nombre es " + stringName + " " + stringLastName)
print("Mi nombre es \(stringName) \(stringLastName)")
let charX:Character = "x"
let charY:Character = "y"
print("Mi variable es " + stringName + " " + stringLastName + " " + String(charX))
print("Mi variable es \(stringName) \(stringLastName) \(charX)")

// Unicode
let heart = "\u{0001f497}"
// numberOne = 🥳
let 🥸 = 10
let 🥺 = 10
let 🤒 = 5
print(🥸 + 🥺 + 🤒)

// Alias
// String => Texto
// Int => Number
// Float => Decimal
typealias Text = String
typealias Number = Int
typealias Decimal = Float

let myName: Text = "Linder Hassinger"
let numberOfLaptops: Number = 6
let height: Decimal = 1.75

// Opcional
// null == nil
// por default myFullName == nil
var myFullName:String?
myFullName = "Juan Zapata"

if myFullName != nil {
    print(myFullName!)
} else {
    print(myFullName!)
}

// reasignacion de variable
if let newFullName = myFullName {
    print("Se reasigno la variable \(newFullName)")
} else {
    print("La reasignación fallo \(myFullName!)")
}

var div1 = 25
var div2 = 5
let operation = div1 % div2

div1 *= div2 // 125
div1 += div2 // 30
div1 /= div2 // 5
div1 -= div2 // 20

let a = 15
let b = 35
print(a == b) // true
print(a != b) // false
print(a > b) // false
print(a < b) // false

let validateAge:Int = 15
let validateName:String = "Pedro"

if validateAge >= 18 && validateName == "Lucas" {
    print("Mayor de edad")
} else {
    print("Es menor de edad")
}

//  TRUE                   FALSE
if validateAge >= 18 || validateName == "Pedro" {
    print("Mayor de edad")
} else {
    print("Es menor de edad")
}

// Operador ternario
let validation = validateAge >= 18 ? "Es mayor de edad" : "Es menor"
print(validation)

var message = ""

message = validateName == "Lucas" ? "El nombre es \(validateName)" : "El nombre no se encontro"

print("Message \(message)")

// Switch
var resultado = ""
let promedio = 18

switch promedio {
case 0..<13:
    resultado = "Desaprobado"
case 13..<16:
    resultado = "Alumno destacadado"
default:
    resultado = "Alumno excelente"
}

// Funciones
// reciba 2 numeros
// Una funcion ideal nunca debe pasar de las 10 lineas
func sumNumber(numberOne num1:Float, secondNumber num2:Float) -> String {
//    var message = ""
//    let sum = num1 + num2
//    if sum > 40 {
//        message = "Mayor a 40"
//    } else {
//        message = "Menor a 40"
//    }
//    return message
    return num1 + num2 > 40 ? "Mayor a 40" : "Menor a 40"
}

sumNumber(numberOne: 10, secondNumber: 30)
sumNumber(numberOne: 50, secondNumber: 10)

func greet(_ name:String, _ age: Int) -> String {
    return "Mi nombre es \(name) y tengo \(age) años"
}

greet("Pepito", 99)

// Rango
// 0 -- 12
print(0..<13)
// 0 -- 12
print(0...13)
// 20 -- 100
print(20...100)
// 50 -- 59
print(50..<60)
print(50...59)

// array [1...10]
for indice in 1...10 {
    print(indice) // nil 0
}

let listName = ["Percy", "Daniel", "Kriss", "Jassyra", "Miguel"]

for name in listName {
    if name == "Jassyra" {
        break
    }
    print(name)
}


var con = 0
// 0 - 9
// 0 - 10
print("while")
while con < 100 {
    print(con)
    con += 1
}

// While - Do While
var con2 = 0
print("repeat while")
repeat {
    print(con2)
    con2 += 1
} while con2 < 100

// Arreglos
var cars:[String] = ["Nissan", "BMW", "Toyota", "Mazda"]

// count
print(cars.count)
cars.append("Susuki")
print(cars)
cars.remove(at: 1)
cars.remove(at: 1)
cars.removeAll()
cars.isEmpty
cars.append("Susuki")
cars.append("Mercedez")
cars.append("Lexus")
cars.first
cars.isEmpty

// Es un arreglo que contiene un
// key : value

let movies = [
    "marvel" : "the avengers",
    "dc" : "Batman",
    "sony" : "Spiderman",
    "warner" : "flash",
    "pixar" : "Toy Story",
    "disney" : "What if?"
]

print(movies["marvel"]!)

for movie in movies.values {
    print(movie)
}

