let queijos = ["Mussarela", "Minas", "Parmesão", "Prato", "Gorgonzola"];

console.log("Lista inicial de queijos:");
console.log(queijos);

queijos.push("Mascarpone", "Ricota", "Provolone");

console.log("\nLista após adicionar os queijos esquecidos:");
console.log(queijos);

queijos.sort();

console.log("\nLista classificada em ordem crescente:");
console.log(queijos);

const inserirQueijo = (lista, queijo) => {
  const index = lista.findIndex(item => item.localeCompare(queijo) > 0);
  if (index === -1) {
    lista.push(queijo);
  } else {
    lista.splice(index, 0, queijo);
  }
};

inserirQueijo(queijos, "Cottage");

console.log("\nLista final com o queijo Cottage inserido:");
console.log(queijos);