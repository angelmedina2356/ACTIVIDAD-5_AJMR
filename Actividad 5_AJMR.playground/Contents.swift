import UIKit
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/

class Humano{
    var estatura:Float, saludo = ""
    var edad:Int, camino = 0
    
    init(estatura:Float, edad:Int) {
        self.estatura = estatura
        self.edad = edad
    }
    
    func Caminar(pasos:Int){
        self.camino = pasos
    }
    
    func Hablar(mensaje:String){
        self.saludo = mensaje
    }
}
var carlos = Humano(estatura: 1.85, edad: 20)
carlos.Caminar(pasos: 35)
carlos.Hablar(mensaje: "Angel Medina Rivas")

print("Angel camino \(carlos.camino) pasos")
print("Me llamo \(carlos.saludo) mucho gusto")
//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.
struct Pantalla
{
    var alto: Int
    var ancho: Int
    
    init(alto:Int, ancho:Int)
    {
        self.alto = alto
        self.ancho = ancho
    }
    
    func Tamaño() -> (Int,Int)
    {
        return (self.alto, self.ancho)
    }
}


/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/
extension Int
{
    var horas:Int
    {
        return self*3600
    }
}


//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7
extension String
{
    var diadelasemana:String{
        return self
    }
    
    func numerodedia() -> String
    {
        switch self.diadelasemana
        {
        case "Domingo":
            return "Dia numero 1"
        case "Lunes":
            return "Dia numero 2"
        case "Martes":
            return "Dia numero 3"
        case "Miercoles":
            return "Dia numero 4"
        case "Jueves":
            return "Dia numero 5"
        case "Viernes":
            return "Dia numero 6"
        case "Sabado":
            return "Dia numero 7"
        default:
            return "Favor de poner otro dia"
        }
    }
}

/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/
var variableOpcional:Int

//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]
var ciudad = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var exist:Int?

exist = ciudad ["DF"]


if ciudad ["DF"] != nil
{
    print("Si existe")
}
else
{
    print("No existe")
}





