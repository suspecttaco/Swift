import Foundation

// Definición de la clase Nota
class Nota {
    var titulo: String
    var contenido: String
    var fechaCreacion: Date
    var etiqueta: String?
    var esImportante: Bool

    // Inicializador de la clase Nota
    init(titulo: String, contenido: String, fechaCreacion: Date = Date(), etiqueta: String? = nil, esImportante: Bool = false) {
        self.titulo = titulo
        self.contenido = contenido
        self.fechaCreacion = fechaCreacion
        self.etiqueta = etiqueta
        self.esImportante = esImportante
    }

    // Método para editar el contenido de la nota
    func editarContenido(nuevoContenido: String) {
        self.contenido = nuevoContenido
    }

    // Método para marcar la nota como importante
    func marcarImportante() {
        self.esImportante = true
    }

    // Método para mostrar los detalles de la nota
    func mostrarDetalles() {
        print("Título: \(titulo)")
        print("Contenido: \(contenido)")
        print("Fecha de Creación: \(fechaCreacion)")
        if let etiqueta = etiqueta {
            print("Etiqueta: \(etiqueta)")
        }
        print("Importante: \(esImportante ? "Sí" : "No")")
    }
}

// Array para almacenar las notas
var notas = [Nota]()

// Función para mostrar el menú de opciones
func mostrarMenu() {
    print("""
    Menú de Notas:
    1. Crear nota
    2. Editar contenido de nota
    3. Eliminar nota
    4. Marcar nota como importante
    5. Mostrar detalles de nota
    6. Salir
    """)
}

// Función para crear una nueva nota
func crearNota() {
    print("Ingrese el título de la nota:")
    let titulo = readLine() ?? ""
    print("Ingrese el contenido de la nota:")
    let contenido = readLine() ?? ""
    print("Ingrese la etiqueta de la nota (opcional):")
    let etiqueta = readLine()

    let nota = Nota(titulo: titulo, contenido: contenido, etiqueta: etiqueta)
    notas.append(nota)
    print("Nota creada exitosamente.")
}

// Función para editar el contenido de una nota
func editarContenidoNota() {
    print("Ingrese el índice de la nota a editar:")
    let indice = Int(readLine() ?? "0") ?? 0
    if indice >= 0 && indice < notas.count {
        print("Ingrese el nuevo contenido de la nota:")
        let nuevoContenido = readLine() ?? ""
        notas[indice].editarContenido(nuevoContenido: nuevoContenido)
        print("Contenido de la nota editado exitosamente.")
    } else {
        print("Índice inválido.")
    }
}

// Función para eliminar una nota
func eliminarNota() {
    print("Lista de notas:")
    for (indice, nota) in notas.enumerated() {
        print("\(indice): \(nota.titulo)")
    }
    print("Ingrese el índice de la nota a eliminar:")
    let indice = Int(readLine() ?? "0") ?? 0
    if indice >= 0 && indice < notas.count {
        notas.remove(at: indice)
        print("Nota eliminada exitosamente.")
    } else {
        print("Índice inválido.")
    }
}

// Función para marcar una nota como importante
func marcarNotaComoImportante() {
    print("Ingrese el índice de la nota a marcar como importante:")
    let indice = Int(readLine() ?? "0") ?? 0
    if indice >= 0 && indice < notas.count {
        notas[indice].marcarImportante()
        print("Nota marcada como importante.")
    } else {
        print("Índice inválido.")
    }
}

// Función para mostrar los detalles de una nota
func mostrarDetallesNota() {
    print("Ingrese el índice de la nota a mostrar:")
    let indice = Int(readLine() ?? "0") ?? 0
    if indice >= 0 && indice < notas.count {
        notas[indice].mostrarDetalles()
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
            crearNota()
        case 2:
            editarContenidoNota()
        case 3:
            eliminarNota()
        case 4:
            marcarNotaComoImportante()
        case 5:
            mostrarDetallesNota()
        case 6:
            continuar = false
        default:
            print("Opción inválida.")
        }
    }
}

// Llamada a la función principal para iniciar el programa
main()