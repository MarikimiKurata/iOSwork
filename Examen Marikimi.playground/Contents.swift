
/*1) el lenguaje de comparación swift presenta una alternativa más limpia a la hora de escribir, con una sintaxis muy parecida a JavaScript, que se puede manejar de manera muy flexible en cuanto a los tipos y al mismo tiempo permite delimitar restricciones en cuanto al tipado de las variables, en cuanto a seguridad, ofrece compilación en tiempo real conforme se va escribiendo el código, esto nos ayuda a detectar mas rápido  los errores de compilación y de sintaxis que podamos tener

 2) Xcode generalmente, consta de tres secciones principales:
 
 a) parte izquierda vertical: seive para bavegar entre las carpetas del proyecto, ademas puedes buscar alguna palabra en todo el código, tiene un panel de errores, seccion debug, breakpoints
 b) el area de edditor: que como su nombre lo dice es para desarrollar el proyecto. aqui es donde se abre cada uno de los archivos y se edita. puede seccionarse en mas de una ventana.
 
c) la seccion de la izquierda es donde se muestran los atributos de los elementos seleccionados, en la parte de abajo hay una seccion de librería de donde se pueden arratrar botones, labes , text areas etc que sirven para la compasicion de la plantalla y la elaboración del proyecto.

3) el IDE te da la opción de importar esa librería a través de un bridging header */


//Preoblema 1

func numerosSumados(numeroDeseado: Int, parejasNumeros: [Int]) -> Int {
    // let numeroDeseado = 5;
    // let parejasNumeros = [1 ,2 ,3 ,4]
    
    var manerasTotal = 0;
    var diccionarioNumeros: [Int: Int] = [:]
    
    for numero in parejasNumeros {
        
        if diccionarioNumeros[parejasNumeros[numero]] == nil {
            diccionarioNumeros[parejasNumeros[numero]] = 1;
        } else {
            let cuenta = diccionarioNumeros[parejasNumeros[numero]]!;
            diccionarioNumeros[parejasNumeros[numero]] = cuenta  + 1;
        }
    }
    
    for indice in 0..<parejasNumeros.count {
        let primerNumero = parejasNumeros[indice];
        let segundoNumero = numeroDeseado - primerNumero;
        
        if diccionarioNumeros[segundoNumero] != nil &&  diccionarioNumeros[segundoNumero]! > 0 {
            diccionarioNumeros[primerNumero]! = diccionarioNumeros[primerNumero]! - 1;
            diccionarioNumeros[segundoNumero]! = diccionarioNumeros[segundoNumero]! - 1;
            manerasTotal = manerasTotal + 1
        }
    }
    
    return manerasTotal;
}
 // numerosSumados(numeroDeseado: 11, parejasNumeros: [3,5,8,9,2])

//problema 3

var texto : String = "Hola mi nombre es Kimi Kurata"

var resultado = ""
var number : Int = 1
for n in texto{
    if (n == " "){
        number = number + 1
    }
}
resultado = "Son " + String(number) + " palabras"
print (resultado)

//if texto.contains(String(espacio)){



//problema 4


/*for c in miPrimerString {
    aux = String(c) + aux
}*/



//Problma 5
enum Deportes {
    case Futbol(tamanoBalon: Int)
    case CarrerasDeAuto(nombreFormula: String)
    case Hockey(sobreHielo: Bool)
    case Basket //(numeroJugadores: Int)
    case Tenis  //(enParejas: Bool)
}
//Problema 6


func ho(deporte miDeporte : Deportes) -> String {
    switch miDeporte {
    case .Hockey(sobreHielo: false):
        return("no es real")
    case .Hockey:
        return("Hockey sobre hielo")
    case .Basket:
        return("el juego es basket")
    case .Tenis:
        return("eljuego es Tenis")
    case .CarrerasDeAuto(nombreFormula: "Formula1"):
        return("Carreras fórmula 1")
    case .CarrerasDeAuto:
        return("Careras que no conocemos")
    case .Futbol(tamanoBalon: 0...4):
        return("Fulbol para niños")
    case .Futbol:
        return("Futbol para niños")
    }
}
print (ho(deporte: .Hockey(sobreHielo: true))
)
