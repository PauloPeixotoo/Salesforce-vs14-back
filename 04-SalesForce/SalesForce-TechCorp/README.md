# Projeto de Treinamento Salesforce: “TechCorp CRM Avançado”

## Introdução

A TechCorp é uma empresa fictícia de tecnologia que desenvolve soluções inovadoras para o mercado de CRM. Recentemente, a empresa decidiu migrar seu sistema de gerenciamento de clientes para a plataforma Salesforce. Como parte do treinamento, os desenvolvedores serão responsáveis por configurar e customizar o Salesforce para atender às necessidades específicas da TechCorp.

## O Projeto

### 21. Back End

- Desenvolver classes Apex para lógica de negócios complexa.
- Implementar integrações com sistemas externos usando APIs RESTful.

### 2. DML (Data Manipulation Language)

- Realizar operações DML (inserção, atualização, exclusão) em registros Salesforce.
- Utilizar SOQL e SOSL para consultas eficientes.

### 3. Classes e Classes de Teste

- Criar classes Apex para encapsular a lógica de negócios.
- Desenvolver classes de teste para garantir a cobertura de código e a qualidade do software.

### 4. Triggers

- Implementar triggers para automatizar processos de negócios.
- Garantir que os triggers sejam eficientes e evitem loops recursivos.

## Estrutura do Projeto

### 1. Configuração Inicial

- Criação de objetos personalizados: Cliente, Produto, Pedido.

`Cliente`
![Criar Cliente](image.png)

`Produto`
![Criar Produto](image-1.png)

`Pedido`
![Criar Pedido](image-2.png)

### 2. Desenvolvimento de Classes Apex

- Classe `ClienteService` para gerenciar operações relacionadas a clientes.
- Classe `PedidoService` para lógica de negócios de pedidos.

### 3. Implementação de Triggers

- Trigger `ClienteTrigger` para validar dados de clientes antes da inserção.
- Trigger `PedidoTrigger` para atualizar o estoque de produtos após a criação de um pedido.

### 4. Criação de Classes de Teste

- Testes para `ClienteService` e `PedidoService` garantindo cobertura de código.
- Testes para `ClienteTrigger` e `PedidoTrigger` validando a lógica de negócios.

### 5. Integração com Sistemas Externos

- Configuração de uma integração com um sistema de pagamento externo usando API RESTful.
- Desenvolvimento de classes Apex para consumir e processar dados da API.

## Problemas Avançados para Resolução com Código Apex

### 1. Validação de Email

- **Problema**: Verificar se o campo de email em um objeto Contato é válido e pertence a um domínio específico (por exemplo, @empresa.com).
- **Solução**: Desenvolver uma classe Apex que valide o formato do email e o domínio.

### 2. Cálculo de Desconto

- **Problema**: Calcular um desconto baseado na quantidade de produtos comprados. Se a quantidade for maior que 10, aplicar um desconto de 10%.
- **Solução**: Criar uma classe Apex que calcule o desconto e atualize o campo Desconto no objeto Pedido.

### 3. Conversão de Moeda

- **Problema**: Converter valores de uma moeda para outra usando uma taxa de câmbio fornecida.
- **Solução**: Desenvolver uma classe Apex que faça a conversão de moeda e atualize o campo ValorConvertido no objeto Transação.

### 4. Geração de Relatórios

- **Problema**: Gerar um relatório mensal de vendas e enviar por email aos gerentes.
- **Solução**: Implementar uma classe Apex que gere o relatório e utilize o serviço de email do Salesforce para enviar o relatório.

### 5. Atualização de Endereço

- **Problema**: Atualizar automaticamente o endereço de todos os contatos associados a uma conta quando o endereço da conta é atualizado.
- **Solução**: Desenvolver uma classe Apex que atualize os endereços dos contatos com base no endereço da conta.

## Problemas com Triggers

### 1. Trigger de Atualização de Status

- **Problema**: Atualizar o status de um Caso para “Fechado” quando a data de resolução é preenchida.
- **Solução**: Implementar um trigger que verifique a data de resolução e atualize o status do caso.

### 2. Trigger de Notificação de Oportunidade

- **Problema**: Enviar uma notificação ao gerente de vendas quando uma oportunidade é fechada com sucesso.
- **Solução**: Desenvolver um trigger que envie uma notificação quando o campo Status da oportunidade for atualizado para “Fechado - Ganhou”.

### 3. Trigger de Atualização de Inventário

- **Problema**: Atualizar o inventário de produtos quando um pedido é criado ou atualizado.
- **Solução**: Implementar um trigger que ajuste a quantidade de produtos no inventário com base nos pedidos.

### 4. Trigger de Validação de Data

- **Problema**: Garantir que a data de início de um projeto seja anterior à data de término.
- **Solução**: Desenvolver um trigger que valide as datas de início e término de um projeto.

### 5. Trigger de Criação de Tarefas

- **Problema**: Criar automaticamente uma tarefa de acompanhamento quando um lead é convertido em contato.
- **Solução**: Implementar um trigger que crie uma tarefa de acompanhamento ao converter um lead.

## Problemas com Classes de Teste

### 1. Teste de Validação de Email

- **Problema**: Testar a classe que valida o formato e domínio do email.
- **Solução**: Criar uma classe de teste que verifique se a validação de email está funcionando corretamente.

### 2. Teste de Cálculo de Desconto

- **Problema**: Testar a classe que calcula o desconto baseado na quantidade de produtos.
- **Solução**: Desenvolver uma classe de teste que valide o cálculo do desconto.

### 3. Teste de Conversão de Moeda

- **Problema**: Testar a classe que converte valores de uma moeda para outra.
- **Solução**: Criar uma classe de teste que verifique a precisão da conversão de moeda.

### 4. Teste de Geração de Relatórios

- **Problema**: Testar a classe que gera e envia relatórios mensais de vendas.
- **Solução**: Desenvolver uma classe de teste que valide a geração e envio de relatórios.

### 5. Teste de Atualização de Endereço

- **Problema**: Testar a classe que atualiza os endereços dos contatos com base no endereço da conta.
- **Solução**: Criar uma classe de teste que verifique a atualização dos endereços dos contatos.

## Tema Extra: Integração com API de CEP dos Correios

### Objetivo

Realizar a conexão com a API de CEP dos Correios para buscar informações de endereço.

### 1. Configuração da API

- Obtenha a URL da API dos Correios para consulta de CEP.

### 2. Desenvolvimento da Classe Apex

- Crie uma classe Apex para realizar chamadas HTTP à API dos Correios.
- Implemente métodos para enviar o CEP e receber os dados de endereço.

### 3. Teste da Integração

- Desenvolva uma classe de teste para validar a integração com a API de CEP dos Correios.
- Verifique se os dados de endereço são retornados corretamente.
