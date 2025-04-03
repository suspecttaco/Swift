import Swift

print("Calcular area de un rectangulo")
print("1.- con formula")
print("2.- con coordenadas")
print("Escoja un metodo: ", terminator: "")


let opcion = Int(readLine()!)!

switch opcion {
case 1:

    print("Ingrese la base: ", terminator: "")

    let base = Double(readLine()!)! 
    print("Ingrese la altura: ", terminator: "")

    let altura = Double(readLine()!)!
    let resul = base * altura

    print("El area es: \(resul)")
    break
case 2:

    print("Ingrese coordenada X1: ", terminator: "")

    let x1 = Double(readLine()!)!
    print("Ingrese coordenada Y1:", terminator: "")

    let y1 = Double(readLine()!)!

    print("Ingrese coordenada X2: ", terminator: "")

    let x2 = Double(readLine()!)!
    print("Ingrese coordenada Y2:", terminator: "")

    let y2 = Double(readLine()!)!

    let resul = (x1 - x2) * (y1 - y2)
    print("El area es: \(resul)")

    break
default:

    break
}

