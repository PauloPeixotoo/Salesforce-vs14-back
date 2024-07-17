const livros = [
    { id: 1, categoria: 'Terror', titulo: 'It' },
    { id: 2, categoria: 'Terror', titulo: 'O Exorcista' },
    { id: 3, categoria: 'Terror', titulo: 'Drácula' },
    { id: 4, categoria: 'Romance', titulo: 'O Morro dos Ventos Uivantes' },
    { id: 5, categoria: 'Policial', titulo: 'O Silêncio dos Inocentes' },
    { id: 6, categoria: 'Suspense', titulo: 'Boneco de Neve' },
    { id: 7, categoria: 'Suspense', titulo: 'Bird Box' },
    { id: 8, categoria: 'Romance', titulo: 'Orgulho e Preconceito' }
];

const listarLivros = (livros) => {
    console.log("Todos os livros:");
    livros.forEach(livro => console.log(`${livro.titulo}`));
};

const listarLivrosTerror = (livros) => {
    const livrosDeTerror = livros.filter(livro => livro.categoria === 'Terror');
    console.log("\nLivros de Terror:");
    livrosDeTerror.forEach(livro => console.log(`${livro.titulo}`));
};

listarLivros(livros);

listarLivrosTerror(livros, 'Terror');