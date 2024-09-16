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

![Imagem criar pais](/assets/image.png)

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

Caso alguma das informações não esteja disponível, o valor **N/A** será exibido. A fórmula do campo de Resumo do País segue a seguinte lógica:
