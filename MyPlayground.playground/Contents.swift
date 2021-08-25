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

//
// Tipos de alias
// Tipos String, Int, Float, Double
// String => Text
// Int => Number
// Float => Decimal
typealias Text = String
typealias Number = Int
typealias Decimal = Float

let birthDate:Text = "01/01/90"
let numberAny:Number = 10
let distancar:Decimal = 100.53

let newName:String = "Lucas"

// Optional
// nil == null
// El valor inicial de address es nil
var address:String?
address = "Av siempre viva 123"

var brand:String? // brand puede ser un string o puede nil
var logo:String?
var company:String?
brand = "Apple 🧑🏼‍💻"
print("-----------")
// Force unwraping
print(brand!)
print("Mi marca es \(brand!)")
print("-----------")
// Por default hemos dicho que brand == nil
// Si yo quiero validar que brand tenga algun valor
// Recordemos que brand es un tipo ademas puede ser nukk
// Si brand esta vacio new brand = false
// Si brand tiene contenido entonces new brand = Apple
if let newBrand = brand {
    // se asigno brand a newBrand
    print("New Brand \(newBrand)")
} else {
    print("La asignación fallo")
}

var i = 1
i += 1
print(i)

let validate = true

if !validate {
    print("false")
} else {
    print("true")
}
// Pueder ser que no necesite parentesis
let validateAge = 18
let validateName = "Lucas"

var message = "Menor de edad"
// IF
if validateAge >= 18 {
    message = "Mayor de edad"
}

print(message)

if validateAge >= 18 && validateName == "Lucas" {
    print("Mi nombre es \(validateName) y tengo \(validateAge)")
}

// Switch
let average = 15
var result = ""

switch average {
case 0..<13:
    result = "Desaprobado"
case 13..<20:
    result = "Aprobado"
default:
    result = "No aplica"
}

print(result)

// Operador ternario
// Es un if en una linea
// Solomente puede ejecutar una accion
// TRUE        // FALSE
let newMessage = validateAge >= 18 ? "Mayor de edad" : "Menor de edad"

if validateAge >= 18 {
    print("Mayor de edad")
    print("Felicitaciones")
}

validateAge >= 18 ? print("Mayor de edad") : print("Menor de edad")

// Funciones

func sumNums(firstNumber num1:Float, secondNumber num2:Float) -> String {
    let sum = num1 + num2
    if sum > 10 {
        return "Es mayor a 10"
    } else {
        return "Es menor a 10"
    }
}

sumNums(firstNumber: 10, secondNumber: 5)
sumNums(firstNumber: 3, secondNumber: 2)

func greet(_ name:String, _ lastName:String) -> String {
    return "Hola \(name) \(lastName)"
}

greet("Linder", "Hassinger")

// FOR IN
//for i in 40..<100 {
//    print(i)
//}

// Arreglos
let numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let names: [String] = ["Lee", "Jamutaq", "Paulo"]

let decimals: [Float] = [1.4, 3.4, 5.2, 9,4]

let fruits = ["apple", "orange", "watermelon", "pineapple"]

for i in numbers {
    print(i)
}

for name in names {
    print(name)
}


for f in fruits {
    print(f)
}
print("////////")
print(fruits.count)
print(numbers.count)
print(names.count)
print("////////")


// While

var numberX = 1
//while true {
//    print(numberX)
//    numberX += 1
//}

while numberX < 100 {
    print(numberX)
    numberX += 1
}

// do while === repeat while
repeat {
    print(numberX)
    numberX += 1
} while numberX < 100

// Diccionarios de datos
// key => value
// clave => valor
let animals: [String:String] = [
    "Felino": "Gatos",
    "Mamifero": "Perro",
    "Ovniboro": "Serpiente",
    "Aves": "Paloma"
]

print(animals["Aves"]!)

let cars: [Int:String] = [
    1: "Toyota",
    2: "Mercedez",
    3: "Lexus"
]
print(cars.count)
print(cars[0])
