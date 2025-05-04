// Clase base Avion
class Avion {
    var modelo: String
    var capacidad: Int
    
    init(modelo: String, capacidad: Int) {
        self.modelo = modelo
        self.capacidad = capacidad
    }
    
    func despegar() {
        print("El avión \(modelo) está despegando")
    }
    
    func aterrizar() {
        print("El avión \(modelo) está aterrizando")
    }
}

// Subclase AvionComercial
class AvionComercial: Avion {
    var numPasajeros: Int
    var servicioABordo: Bool
    
    init(modelo: String, capacidad: Int, numPasajeros: Int, servicioABordo: Bool) {
        self.numPasajeros = numPasajeros
        self.servicioABordo = servicioABordo
        super.init(modelo: modelo, capacidad: capacidad)
    }
    
    func abordaje() {
        print("El avión comercial \(modelo) está abordando \(numPasajeros) pasajeros")
    }
    
    func servirComida() {
        if servicioABordo {
            print("Se está sirviendo comida a los pasajeros del \(modelo)")
        } else {
            print("Este vuelo no tiene servicio de comida")
        }
    }
}

// Subclase AvionCarga
class AvionCarga: Avion {
    var capacidadCarga: Float
    var tipoCarga: String
    
    init(modelo: String, capacidad: Int, capacidadCarga: Float, tipoCarga: String) {
        self.capacidadCarga = capacidadCarga
        self.tipoCarga = tipoCarga
        super.init(modelo: modelo, capacidad: capacidad)
    }
    
    func cargar() {
        print("Cargando \(capacidadCarga) toneladas de \(tipoCarga) en el avión \(modelo)")
    }
    
    func descargar() {
        print("Descargando \(capacidadCarga) toneladas de \(tipoCarga) del avión \(modelo)")
    }
}

// Subclase AvionMilitar
class AvionMilitar: Avion {
    var tipoArmamento: String
    var camuflaje: Bool
    
    init(modelo: String, capacidad: Int, tipoArmamento: String, camuflaje: Bool) {
        self.tipoArmamento = tipoArmamento
        self.camuflaje = camuflaje
        super.init(modelo: modelo, capacidad: capacidad)
    }
    
    func atacar() {
        print("El avión militar \(modelo) está atacando con \(tipoArmamento)")
    }
    
    func realizarManiobra() {
        print("El avión militar \(modelo) está realizando maniobras evasivas")
        if camuflaje {
            print("El avión militar \(modelo) ha activado su camuflaje")
        }
    }
}

// Función para probar la jerarquía de Avión
func probarJerarquiaAvion() {
    print("\n--- Jerarquía de Avión ---\n")
    
    // Crear instancias
    let avionBase = Avion(modelo: "Genérico-100", capacidad: 200)
    let avionComercial = AvionComercial(modelo: "Boeing-737", capacidad: 180, numPasajeros: 165, servicioABordo: true)
    let avionCarga = AvionCarga(modelo: "Airbus-Cargo", capacidad: 10, capacidadCarga: 120.5, tipoCarga: "Mercancía")
    let avionMilitar = AvionMilitar(modelo: "F-22", capacidad: 2, tipoArmamento: "Misiles aire-aire", camuflaje: true)
    
    // Probar avión base
    print("=== Avión Base ===")
    print("Modelo: \(avionBase.modelo), Capacidad: \(avionBase.capacidad)")
    avionBase.despegar()
    avionBase.aterrizar()
    
    // Probar avión comercial
    print("\n=== Avión Comercial ===")
    print("Modelo: \(avionComercial.modelo), Capacidad: \(avionComercial.capacidad), Pasajeros: \(avionComercial.numPasajeros)")
    avionComercial.despegar()
    avionComercial.abordaje()
    avionComercial.servirComida()
    avionComercial.aterrizar()
    
    // Probar avión de carga
    print("\n=== Avión de Carga ===")
    print("Modelo: \(avionCarga.modelo), Capacidad Tripulación: \(avionCarga.capacidad), Carga: \(avionCarga.capacidadCarga) toneladas")
    avionCarga.cargar()
    avionCarga.despegar()
    avionCarga.aterrizar()
    avionCarga.descargar()
    
    // Probar avión militar
    print("\n=== Avión Militar ===")
    print("Modelo: \(avionMilitar.modelo), Capacidad: \(avionMilitar.capacidad), Armamento: \(avionMilitar.tipoArmamento)")
    avionMilitar.despegar()
    avionMilitar.atacar()
    avionMilitar.realizarManiobra()
    avionMilitar.aterrizar()
}
