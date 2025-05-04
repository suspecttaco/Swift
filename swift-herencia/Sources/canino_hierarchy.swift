// Clase base Canino
class Canino {
    var raza: String
    var edad: Int
    
    init(raza: String, edad: Int) {
        self.raza = raza
        self.edad = edad
    }
    
    func ladrar() {
        print("El canino de raza \(raza) está ladrando")
    }
    
    func comer() {
        print("El canino está comiendo")
    }
}

// Subclase PerroDomestico
class PerroDomestico: Canino {
    var nombreDueno: String
    var entrenado: Bool
    
    init(raza: String, edad: Int, nombreDueno: String, entrenado: Bool) {
        self.nombreDueno = nombreDueno
        self.entrenado = entrenado
        super.init(raza: raza, edad: edad)
    }
    
    func jugar() {
        print("El perro doméstico de raza \(raza) está jugando con \(nombreDueno)")
    }
    
    func dormir() {
        print("El perro doméstico de raza \(raza) está durmiendo en la casa de \(nombreDueno)")
    }
}

// Subclase PerroGuardia
class PerroGuardia: Canino {
    var nivelAlerta: Int
    var certificado: Bool
    
    init(raza: String, edad: Int, nivelAlerta: Int, certificado: Bool) {
        self.nivelAlerta = nivelAlerta
        self.certificado = certificado
        super.init(raza: raza, edad: edad)
    }
    
    func vigilar() {
        print("El perro guardián de raza \(raza) está vigilando con nivel de alerta \(nivelAlerta)")
    }
    
    func atacarIntruso() {
        print("El perro guardián de raza \(raza) está atacando a un intruso")
    }
}

// Subclase PerroGuia
class PerroGuia: Canino {
    var pacienteAsignado: String
    var anosEntrenamiento: Int
    
    init(raza: String, edad: Int, pacienteAsignado: String, anosEntrenamiento: Int) {
        self.pacienteAsignado = pacienteAsignado
        self.anosEntrenamiento = anosEntrenamiento
        super.init(raza: raza, edad: edad)
    }
    
    func guiar() {
        print("El perro guía de raza \(raza) está guiando a \(pacienteAsignado)")
    }
    
    func detectarObstaculo() {
        print("El perro guía de raza \(raza) ha detectado un obstáculo y está advirtiendo a \(pacienteAsignado)")
    }
}

// Función para probar la jerarquía de Canino
func probarJerarquiaCanino() {
    print("\n--- Jerarquía de Canino ---\n")
    
    // Crear instancias
    let caninoBase = Canino(raza: "Mestizo", edad: 3)
    let perroDomestico = PerroDomestico(raza: "Golden Retriever", edad: 2, nombreDueno: "María", entrenado: true)
    let perroGuardia = PerroGuardia(raza: "Pastor Alemán", edad: 4, nivelAlerta: 9, certificado: true)
    let perroGuia = PerroGuia(raza: "Labrador", edad: 5, pacienteAsignado: "Carlos", anosEntrenamiento: 3)
    
    // Probar canino base
    print("=== Canino Base ===")
    print("Raza: \(caninoBase.raza), Edad: \(caninoBase.edad) años")
    caninoBase.ladrar()
    caninoBase.comer()
    
    // Probar perro doméstico
    print("\n=== Perro Doméstico ===")
    print("Raza: \(perroDomestico.raza), Edad: \(perroDomestico.edad) años, Dueño: \(perroDomestico.nombreDueno)")
    perroDomestico.ladrar()
    perroDomestico.jugar()
    perroDomestico.comer()
    perroDomestico.dormir()
    
    // Probar perro de guardia
    print("\n=== Perro de Guardia ===")
    print("Raza: \(perroGuardia.raza), Edad: \(perroGuardia.edad) años, Nivel de Alerta: \(perroGuardia.nivelAlerta)")
    perroGuardia.vigilar()
    perroGuardia.ladrar()
    perroGuardia.atacarIntruso()
    
    // Probar perro guía
    print("\n=== Perro Guía ===")
    print("Raza: \(perroGuia.raza), Edad: \(perroGuia.edad) años, Paciente: \(perroGuia.pacienteAsignado), Años de entrenamiento: \(perroGuia.anosEntrenamiento)")
    perroGuia.guiar()
    perroGuia.detectarObstaculo()
    perroGuia.ladrar()
}
