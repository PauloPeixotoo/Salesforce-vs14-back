const pedidos = [
    { id: 1, nomeCliente: 'João', produto: 'Pizza de Calabresa', bebida: 'Refrigerante' },
    { id: 2, nomeCliente: 'Maria', produto: 'Pizza Marguerita', bebida: 'Água' },
    { id: 3, nomeCliente: 'José', produto: 'Pizza de Frango com Catupiry', bebida: 'Suco de Laranja' },
    { id: 4, nomeCliente: 'Ana', produto: 'Pizza Quatro Queijos', bebida: 'Cerveja' },
    { id: 5, nomeCliente: 'Carlos', produto: 'Pizza de Pepperoni', bebida: 'Refrigerante' },
];

const pedidosPizza = pedidos.map(pedido => pedido.produto);
console.log("No dia de hoje os pedidos de pizza foram:");
console.log(pedidosPizza);

const clientesRefrigerante = pedidos.filter(pedido => pedido.bebida === 'Refrigerante').map(pedido => pedido.nomeCliente);
console.log("\nOs clientes que fizeram pedido com refrigerante foram:");
console.log(clientesRefrigerante);

const clientesSuco = pedidos.filter(pedido => pedido.bebida.includes('Suco')).map(pedido => pedido.nomeCliente);
console.log("\nOs clientes que fizeram pedido com suco foram:");
console.log(clientesSuco);

const clientesCerveja = pedidos.filter(pedido => pedido.bebida === 'Cerveja').map(pedido => pedido.nomeCliente);
console.log("\nOs clientes que fizeram pedido com cerveja foram:");
console.log(clientesCerveja);
