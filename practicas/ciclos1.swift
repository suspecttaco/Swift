import Swift

var matriz: [[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: 3)

for i in 0..<3 {
    for j in 0..<3 {

        print("Introduzca dato [\(i + 1)][\(j + 1)]: ", terminator: "")

        let input =  Int(readLine()!)!
        matriz[i][j] = input
        
    }
}

print("Matriz ingresada:")

for i in 0..<3 {
    print("[ \(matriz[i][0]), \(matriz[i][1]), \(matriz[i][2])]")
}

print("Suma por filas:")

for i in 0..<3 {
    let suma = matriz[i][0] + matriz[i][1] + matriz[i][2]

    print("Fila \(i): \(suma)")
}

print("Suma por columnas:")

for i in 0..<3 {
    let suma = matriz[0][i] + matriz[1][i] + matriz[2][i]

    print("Columna \(i): \(suma)")
}

let a = matriz[0][0]
let b = matriz[0][1]
let c = matriz[0][2]
let d = matriz[1][0]
let e = matriz[1][1]
let f = matriz[1][2]
let g = matriz[2][0]
let h = matriz[2][1]
let i = matriz[2][2]

let determinante = a * (e * i - f * h) - b * (d * i - f * g) + c * (d * h - e * g)
print("La determinante de la matriz es: \(determinante)")