import Swift


class Calculadora {

    func calcularAreaRectangulo(base: Int, altura: Int) -> Int {
        
        let resultado: Int = base * altura

        return resultado

    }

    func calcularAreaRectangulo(x1: Int, y1: Int, x2: Int, y2: Int) -> Int {
        let resultado: Int = (x1-x2)*(y1-y2)
        return resultado
    }

    func calcularAreaTriangulo(base: Int, altura: Int) -> Int {
        let resultado: Int = base * altura / 2

        return resultado
    }

    func calcularAreaTriangulo(x1: Int, y1: Int, x2: Int, y2: Int) -> Int {
        let base: Int = x1 - x2
        let altura: Int = y1 - y2

        let resultado: Int = base * altura / 2

        return resultado
    }
}

let objeto = Calculadora()
var base: Int
var altura: Int
var x1: Int
var x2: Int
var y1: Int
var y2: Int


print("Calcular area del Rectangulo por atributos", terminator: "\n\n")

print("Ingrese base: ", terminator: "")
base = Int(readLine()!)!
print("Ingrese altura: ", terminator: "")
altura = Int(readLine()!)!

print("El resultado es: \(objeto.calcularAreaRectangulo(base: base, altura: altura))", terminator: "\n\n")


print("Calcular area del Rectangulo por coordenadas", terminator: "\n\n")

print("Ingrese coordenada 1: ", terminator: "\n")

print("Ingrese x1: ", terminator: "")
x1 = Int(readLine()!)!
print("Ingrese y1: ", terminator: "")
y1 = Int(readLine()!)!

print("Ingrese coordenada 2: ", terminator: "\n")

print("Ingrese x2: ", terminator: "")
x2 = Int(readLine()!)!
print("Ingrese y1: ", terminator: "")
y2 = Int(readLine()!)!

print("El resultado es: \(objeto.calcularAreaRectangulo(x1: x1, y1: y1, x2: x2, y2: y2))", terminator: "\n\n")

print("=====================================\n")

print("Calcular area del Triangulo por atributos", terminator: "\n\n")

print("Ingrese base: ", terminator: "")
base = Int(readLine()!)!
print("Ingrese altura: ", terminator: "")
altura = Int(readLine()!)!

print("El resultado es: \(objeto.calcularAreaTriangulo(base: base, altura: altura))", terminator: "\n\n")

print("Calcular area del Triangulo por coordenadas", terminator: "\n\n")

print("Ingrese coordenada 1: ", terminator: "\n")

print("Ingrese x1: ", terminator: "")
x1 = Int(readLine()!)!
print("Ingrese y1: ", terminator: "")
y1 = Int(readLine()!)!

print("Ingrese coordenada 2: ", terminator: "\n")

print("Ingrese x2: ", terminator: "")
x2 = Int(readLine()!)!
print("Ingrese y1: ", terminator: "")
y2 = Int(readLine()!)!

print("El resultado es: \(objeto.calcularAreaTriangulo(x1: x1, y1: y1, x2: x2, y2: y2))", terminator: "\n\n")

_ = readLine()
