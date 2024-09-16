# Projeto Globo Salesforce

Este é um projeto para demonstrar como configurar e desenvolver em Salesforce, utilizando a plataforma de desenvolvimento da Salesforce.

## Objetivo

O objetivo deste projeto é introduzir os conceitos e ferramentas principais da Salesforce, como automação de negócios, criação de objetos customizados, fluxo de trabalho e desenvolvimento com Apex e Visualforce.

## Objetos Customizados

### País

Foi criado um objeto customizado chamado **País** com os seguintes campos:

- **Sigla (Obrigatório e Único):** Este campo é obrigatório e deve ser único para garantir que não haja dois países com a mesma sigla.
- **Moeda:** Campo que armazena a moeda utilizada no país.
- **Idioma:** Campo que guarda o idioma principal do país.

![Imagem criar pais](assets/Criar%20Pais.png)

## Objetos Padrões Customizados

### Conta

Foram realizadas as seguintes customizações no objeto padrão **Conta (Account)**:

- **Valor Total de Vendas (Currency):** Campo para armazenar o valor total de vendas realizadas para aquela conta.
- **País (Lookup para País, Obrigatório):** Campo de relacionamento obrigatório para o objeto customizado **País**, conectando cada conta a um país específico.
- **Resumo do País (Formula Text):** Campo que exibe um resumo das informações do país relacionado à conta, com o seguinte formato:
  - `N: valor do Nome`
  - `S: valor da Sigla`
  - `I: valor do Idioma`
  - `M: valor da Moeda`

![Criar Conta](assets/Criar%20Conta.png)

Caso alguma das informações não esteja disponível, o valor **N/A** será exibido. A fórmula do campo de Resumo do País segue a seguinte lógica:

![Resumo Pais](assets/Resumo%20Pais.png)

## Endpoint customizado de Upsert de uma conta definindo o contrato de entrada e saida

![EndPoint Upsert](assets/Account%20Upsert.png)

## Endpoint customizado que faça um Insert de uma Ordem (Order) e defina os contratos de entrada e saída

![EndPoint Insert](assets/Order%20Insert.png)

## Implementação uma automação com interfaçe grafica para envio de notificação por e-mail sempre que uma conta for criada ou editada, conseguindo alterar o e-mail pela interface gráfica

![Atualiza Email da Conta](assets/Atualiza%20email%20da%20conta.png)

### Sempre que uma conta é criada ou editada um email é enviado

![Envia email de aviso sobre conta](assets/Envia%20email%20aviso.png)

## Implementação de uma automação sem uso de código para que sempre que uma nova Order seja criada o campo valor total de vendas da conta relacionada seja incrementado do valor da Order.

![Automacao sem Codigo](assets/Automacao%20sem%20codigo.png)

## Agendamento de trabalho todos os dias 00:00 para excluir orders que estão com datas maiores que 3 meses;

![Maiores que 3 meses](assets/Maiores%20que%20tres%20meses.png)

## Testes Realizados

### Testes que foram realizados para que cumprisse com o necessario e garantindo a funcionabilidade das classes, triggers.

![Testes Realizados](assets/Testes%20Realizados.png)

## Iplementação Utilizando LWC do google maps

![GoogleMap](assets/Google%20Map.png)