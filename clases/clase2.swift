import Foundation

// Definición del enum Estado para representar el estado de una tarea
enum Estado {
    case pendiente
    case enProgreso
    case completada
}

// Definición de la clase Tarea
class Tarea {
    private var descripcion: String
    private var fechaVencimiento: Date
    private var prioridad: Int
    private var estado: Estado

    // Inicializador de la clase Tarea
    init(descripcion: String, fechaVencimiento: Date, prioridad: Int, estado: Estado = .pendiente) {
        self.descripcion = descripcion
        self.fechaVencimiento = fechaVencimiento
        self.prioridad = prioridad
        self.estado = estado
    }

    // Método para marcar la tarea como completada
    func marcarCompletada() {
        self.estado = .completada
    }

    // Método para cambiar la prioridad de la tarea
    func cambiarPrioridad(nuevaPrioridad: Int) {
        self.prioridad = nuevaPrioridad
    }

    // Método para editar la descripción de la tarea
    func editarDescripcion(nuevaDescripcion: String) {
        self.descripcion = nuevaDescripcion
    }

    // Método para verificar el estado de la tarea
    func verificarEstado() -> Estado {
        return self.estado
    }
}

// Array para almacenar las tareas
var tareas = [Tarea]()

// Función para mostrar el menú de opciones
func mostrarMenu() {
    print("""
    Menú de Tareas:
    1. Crear tarea
    2. Marcar tarea como completada
    3. Cambiar prioridad de tarea
    4. Editar descripción de tarea
    5. Verificar estado de tarea
    6. Mostrar tareas
    7. Salir
    """)
}

// Métodos de solo lectura para acceder a las propiedades privadas de Tarea
extension Tarea {
    func verDescripcion() -> String { return self.descripcion }
    func verFechaVencimiento() -> Date { return self.fechaVencimiento }
    func verPrioridad() -> Int { return self.prioridad }
}

// Función para mostrar todas las tareas guardadas
func mostrarTareas() {
    if tareas.isEmpty {
        print("No hay tareas guardadas.")
    } else {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        for (indice, tarea) in tareas.enumerated() {
            // Acceso a propiedades privadas a través de métodos o cambiando a propiedades públicas si lo prefieres
            print("Tarea \(indice):")
            print("  Descripción: \(tarea.verDescripcion())")
            print("  Fecha de vencimiento: \(dateFormatter.string(from: tarea.verFechaVencimiento()))")
            print("  Prioridad: \(tarea.verPrioridad())")
            print("  Estado: \(tarea.verificarEstado())")
            print("-----------------------------")
        }
    }
}

// Función para crear una nueva tarea
func crearTarea() {
    print("Ingrese la descripción de la tarea:")
    let descripcion = readLine() ?? ""
    print("Ingrese la fecha de vencimiento (yyyy-MM-dd):")
    let fechaString = readLine() ?? ""
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let fechaVencimiento = dateFormatter.date(from: fechaString) ?? Date()
    print("Ingrese la prioridad de la tarea (número):")
    let prioridad = Int(readLine() ?? "0") ?? 0

    let tarea = Tarea(descripcion: descripcion, fechaVencimiento: fechaVencimiento, prioridad: prioridad)
    tareas.append(tarea)
    print("Tarea creada exitosamente.")
}

// Función para marcar una tarea como completada
func marcarTareaComoCompletada() {
    print("Ingrese el índice de la tarea a marcar como completada:")
    let indice = Int(readLine() ?? "0") ?? 0
    if indice >= 0 && indice < tareas.count {
        tareas[indice].marcarCompletada()
        print("Tarea marcada como completada.")
    } else {
        print("Índice inválido.")
    }
}

// Función para cambiar la prioridad de una tarea
func cambiarPrioridadTarea() {
    print("Ingrese el índice de la tarea a cambiar la prioridad:")
    let indice = Int(readLine() ?? "0") ?? 0
    if indice >= 0 && indice < tareas.count {
        print("Ingrese la nueva prioridad:")
        let nuevaPrioridad = Int(readLine() ?? "0") ?? 0
        tareas[indice].cambiarPrioridad(nuevaPrioridad: nuevaPrioridad)
        print("Prioridad cambiada exitosamente.")
    } else {
        print("Índice inválido.")
    }
}

// Función para editar la descripción de una tarea
func editarDescripcionTarea() {
    print("Ingrese el índice de la tarea a editar la descripción:")
    let indice = Int(readLine() ?? "0") ?? 0
    if indice >= 0 && indice < tareas.count {
        print("Ingrese la nueva descripción:")
        let nuevaDescripcion = readLine() ?? ""
        tareas[indice].editarDescripcion(nuevaDescripcion: nuevaDescripcion)
        print("Descripción editada exitosamente.")
    } else {
        print("Índice inválido.")
    }
}

// Función para verificar el estado de una tarea
func verificarEstadoTarea() {
    print("Ingrese el índice de la tarea a verificar el estado:")
    let indice = Int(readLine() ?? "0") ?? 0
    if indice >= 0 && indice < tareas.count {
        let estado = tareas[indice].verificarEstado()
        print("El estado de la tarea es: \(estado)")
    } else {
        print("Índice inválido.")
    }
}

// Función principal que controla el flujo del programa
func main() {
    var continuar = true
    while continuar {
        mostrarMenu()
        let opcion = Int(readLine() ?? "0") ?? 0
        switch opcion {
        case 1:
            crearTarea()
        case 2:
            marcarTareaComoCompletada()
        case 3:
            cambiarPrioridadTarea()
        case 4:
            editarDescripcionTarea()
        case 5:
            verificarEstadoTarea()
        case 6:
            mostrarTareas()
        case 7:
            continuar = false
        default:
            print("Opción inválida.")
        }
    }
}

// Llamada a la función principal para iniciar el programa
main()