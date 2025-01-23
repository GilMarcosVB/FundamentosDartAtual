void main() {
    // ? = nullable (aceita null)
    // sem nada (padrão) (não aceita valores null)

    // Tem que incializar a lista e os itens internos não podem ser nulos
    List<String> nome = [];

    // Não precisa inicializar a Lista e os itens internos não podem ser nulos
    List<String>? nomesNulos;
    // nomesNulos =  ["Fulano", null];

    // Tem que inicializar a Lista e os itens internos podem ser nulos;
    List<String?> nomesInternosAceitaNulos = ["Fulano", null];

    // Não precisa Inicializar  a Lista e os itens internos podem ser nulos
    List<String?>? nomesNulosInternosAceitaNulos = null;

    /*------- Declaração por Inferência ---------*/

    // Tem que incializar a lista e os itens internos não podem ser nulos
    var nomeInferencia = <String>[];

    // Tem que inicializar a Lista e os itens internos podem ser nulos;
    final nomesInternosAceitaNulosInferencia = <String?>["Fulano", null];

    // Não precisa Inicializar  a Lista e os itens internos podem ser nulos
    // Não é possível declarar por inferência
    // var nomesNulosInternosAceitaNulosInferencia = <String?>?null;





}