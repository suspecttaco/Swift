// Clase base Persona
class Persona {
    var nombre: String
    var edad: Int
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
    
    func hablar() {
        print("\(nombre) está hablando")
    }
    
    func caminar() {
        print("\(nombre) está caminando")
    }
}

// Subclase Estudiante
class Estudiante: Persona {
    var carrera: String
    var promedio: Float
    
    init(nombre: String, edad: Int, carrera: String, promedio: Float) {
        self.carrera = carrera
        self.promedio = promedio
        super.init(nombre: nombre, edad: edad)
    }
    
    func estudiar() {
        print("\(nombre) está estudiando \(carrera)")
    }
    
    func presentarExamen() {
        print("\(nombre) está presentando un examen de \(carrera)")
        print("Su promedio actual es: \(promedio)")
    }
}

// Subclase Empleado
class Empleado: Persona {
    var empresa: String
    var salario: Float
    
    init(nombre: String, edad: Int, empresa: String, salario: Float) {
        self.empresa = empresa
        self.salario = salario
        super.init(nombre: nombre, edad: edad)
    }
    
    func trabajar() {
        print("\(nombre) está trabajando en \(empresa)")
    }
    
    func cobrar() {
        print("\(nombre) está cobrando su salario de $\(salario)")
    }
}

// Subclase Deportista
class Deportista: Persona {
    var deporte: String
    var medallasGanadas: Int
    
    init(nombre: String, edad: Int, deporte: String, medallasGanadas: Int) {
        self.deporte = deporte
        self.medallasGanadas = medallasGanadas
        super.init(nombre: nombre, edad: edad)
    }
    
    func entrenar() {
        print("\(nombre) está entrenando \(deporte)")
    }
    
    func competir() {
        print("\(nombre) está compitiendo en un evento de \(deporte)")
        print("Ha ganado \(medallasGanadas) medallas hasta ahora")
    }
}

// Función para probar la jerarquía de Persona
func probarJerarquiaPersona() {
    print("\n--- Prueba de Jerarquía de Persona ---\n")
    
    // Crear instancias
    let personaBase = Persona(nombre: "Ana", edad: 30)
    let estudiante = Estudiante(nombre: "Pedro", edad: 20, carrera: "Ingeniería", promedio: 9.2)
    let empleado = Empleado(nombre: "Laura", edad: 35, empresa: "TechCorp", salario: 4500.0)
    let deportista = Deportista(nombre: "Juan", edad: 25, deporte: "Natación", medallasGanadas: 5)
    
    // Probar persona base
    print("=== Persona Base ===")
    print("Nombre: \(personaBase.nombre), Edad: \(personaBase.edad) años")
    personaBase.hablar()
    personaBase.caminar()
    
    // Probar estudiante
    print("\n=== Estudiante ===")
    print("Nombre: \(estudiante.nombre), Edad: \(estudiante.edad) años, Carrera: \(estudiante.carrera)")
    estudiante.hablar()
    estudiante.estudiar()
    estudiante.presentarExamen()
    
    // Probar empleado
    print("\n=== Empleado ===")
    print("Nombre: \(empleado.nombre), Edad: \(empleado.edad) años, Empresa: \(empleado.empresa)")
    empleado.caminar()
    empleado.trabajar()
    empleado.cobrar()
    
    // Probar deportista
    print("\n=== Deportista ===")
    print("Nombre: \(deportista.nombre), Edad: \(deportista.edad) años, Deporte: \(deportista.deporte)")
    deportista.hablar()
    deportista.entrenar()
    deportista.competir()
}
