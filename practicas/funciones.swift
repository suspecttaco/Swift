import Swift

func obtenerMenor(arreglo: [Int]){
    var menor = arreglo[0]
    var x = -1

    for i in 0..<arreglo.count {
        if arreglo[i] < menor {
            menor  = arreglo[i]
            x = i + 1
        }
    }
    
    if x >= 0 {
        print("El elemento mas pequeño dentro del arreglo es: \(menor) y se encuentra en la posicion \(x)")    
    } else {
        print("Todos los elementos son iguales")   
    }

    return
}

func obtenerMayor(arreglo: [Int]){
    var mayor = arreglo[0]
    var x = -1

    for i in 0..<arreglo.count {
        if arreglo[i] > mayor {
            mayor  = arreglo[i]
            x = i + 1
        }
    }

    if x >= 0 {
        print("El elemento mas grande dentro del arreglo es: \(mayor) y se encuentra en la posicion \(x)")
    } else {
        print("Todos los elementos son iguales")   
    }
    
    return
}

print("Indique cantidad de elementos a ingresar: ", terminator: "")
let input = Int(readLine()!)!

var arreglo: [Int] = Array(repeating: 0, count: input)

for i in 0..<arreglo.count {
    print("Ingrese el dato [\(i+1)]: ",terminator: "")
    arreglo[i] = Int(readLine()!)!
}

obtenerMenor(arreglo: arreglo)
obtenerMayor(arreglo: arreglo)
