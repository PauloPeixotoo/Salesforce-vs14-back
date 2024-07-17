function encontrarParesEIndices() {
    const lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30];
    let paresComIndices = [];

    lista.forEach((numero, indice) => {
        if (numero % 2 === 0) {
            paresComIndices.push(`Os num pares da lista são: ${numero} e possuem o índice: ${indice}`);
        }
    });

    paresComIndices.forEach(item => {
        console.log(item);
    });
}

encontrarParesEIndices();
