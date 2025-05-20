class MoneyConverter {
    private let euro: Float = 21.17
    private let dollar: Float = 19.31
    private let yen: Float = 0.13
    
    func convertToEuro(_ peso: Float) -> Float {
        return peso / euro
    }
    
    func convertToEuro(_ money: Float, from currency: String) -> Float {
        let aux: Float
        switch currency {
            case "dollar": aux = money * dollar
            case "yen": aux = money * yen
            default: return money
        }
        return aux / euro
    }
    
    func convertToDollar(_ peso: Float) -> Float {
        return peso / dollar
    }
    
    func convertToDollar(_ money: Float, from currency: String) -> Float {
        let aux: Float
        switch currency {
            case "euro": aux = money * euro
            case "yen": aux = money * yen
            default: return money
        }
        return aux / dollar
    }
    
    func convertToYen(_ peso: Float) -> Float {
        return peso / yen
    }
    
    func convertToYen(_ money: Float, from currency: String) -> Float {
        let aux: Float
        switch currency {
            case "euro": aux = money * euro
            case "dollar": aux = money * dollar
            default: return money
        }
        return aux / yen
    }
    
    func convertToPeso(_ money: Float, from currency: String) -> Float {
        switch currency {
            case "euro": return money * euro
            case "dollar": return money * dollar
            case "yen": return money * yen
            default: return money
        }
    }
}

// Programa principal
func main() {
    let converter = MoneyConverter()
    
    print("Convertidor de Monedas")
    print("Monedas disponibles: peso, dollar, euro, yen")
    
    print("\nIngrese la moneda de origen:")
    guard let fromCurrency = readLine()?.lowercased() else { return }
    
    print("Ingrese la moneda destino:")
    guard let toCurrency = readLine()?.lowercased() else { return }
    
    print("Ingrese la cantidad a convertir:")
    guard let input = readLine(),
          let amount = Float(input) else {
        print("Error: Ingrese un número válido")
        return
    }
    
    let result: Float = switch toCurrency {
        case "peso":
            fromCurrency == "peso" ? amount : converter.convertToPeso(amount, from: fromCurrency)
        case "dollar":
            fromCurrency == "peso" ? converter.convertToDollar(amount) : converter.convertToDollar(amount, from: fromCurrency)
        case "euro":
            fromCurrency == "peso" ? converter.convertToEuro(amount) : converter.convertToEuro(amount, from: fromCurrency)
        case "yen":
            fromCurrency == "peso" ? converter.convertToYen(amount) : converter.convertToYen(amount, from: fromCurrency)
        default:
            amount
    }
    
    print("Resultado: \(result)")
}

// Ejecutar el programa
main()