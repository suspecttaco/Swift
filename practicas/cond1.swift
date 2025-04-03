import Swift

var entrada = 0
var minutos = 0
var horas = 0

print("Digite cantidad de segundos a convertir: ", terminator: "")

let convertido = Int(readLine()!)! 
    entrada = convertido

if entrada > 0 {
    print("La cantidad '\(entrada)' equivale a: ")

    if entrada > 3600 {
        horas = entrada / 3600
        print("\(horas) horas")
    }

    if entrada > 60 {
        minutos = entrada / 60
        print("\(minutos) minutos")
    }

    print("\(entrada) segundos")

} else {
    print("Cantidad no valida")
        
}
