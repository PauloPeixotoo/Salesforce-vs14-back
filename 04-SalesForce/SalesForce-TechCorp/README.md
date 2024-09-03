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

- Criar cliente.
![Criar Cliente](image.png)

- Criar Produto.
![Criar Produto](image-1.png)

- Criar Pedido.
![Criar Pedido](image-2.png)

### 2. Desenvolvimento de Classes Apex

- Classe `ClienteService` para gerenciar operações relacionadas a clientes.

![Classe ClienteService](image-4.png)

- Classe `PedidoService` para lógica de negócios de pedidos.

![Classe PedidoService](image-3.png)

![Continuacao classe PedidoService](image-5.png)

### 3. Implementação de Triggers

- Trigger `ClienteTrigger` para validar dados de clientes antes da inserção.

![ClienteTrigger](image-7.png)

- Trigger `PedidoTrigger` para atualizar o estoque de produtos após a criação de um pedido.


![PedidoTrigger](image-6.png)

### 4. Criação de Classes de Teste

- Testes para `ClienteService` e `PedidoService` garantindo cobertura de código.

- Testes para `ClienteService`

![TestesClienteService](image-8.png)
![TestesClienteService](image-9.png)
![TestesClienteService](image-10.png)

- Testes para `PedidoService`

![TestesClienteService](image-11.png)
![TestesClienteService](image-12.png)

## Problemas Avançados para Resolução com Código Apex

### 1. Validação de Email

- **Problema**: Verificar se o campo de email em um objeto Contato é válido e pertence a um domínio específico (por exemplo, @empresa.com).
- **Solução**: Desenvolver uma classe Apex que valide o formato do email e o domínio.

![Validacao Email](image-19.png)

### 2. Cálculo de Desconto

- **Problema**: Calcular um desconto baseado na quantidade de produtos comprados. Se a quantidade for maior que 10, aplicar um desconto de 10%.
- **Solução**: Criar uma classe Apex que calcule o desconto e atualize o campo Desconto no objeto Pedido.

![Calcular Desconto](image-13.png)

### 3. Conversão de Moeda

- **Problema**: Converter valores de uma moeda para outra usando uma taxa de câmbio fornecida.
- **Solução**: Desenvolver uma classe Apex que faça a conversão de moeda e atualize o campo ValorConvertido no objeto Transação.

![Moeda Convertida](image-15.png)
![Moeda Convertida](image-16.png)
![Moeda Convertida](image-17.png)

### 4. Geração de Relatórios

- **Problema**: Gerar um relatório mensal de vendas e enviar por email aos gerentes.
- **Solução**: Implementar uma classe Apex que gere o relatório e utilize o serviço de email do Salesforce para enviar o relatório.

![Gerar Relatorio](image-14.png)

### 5. Atualização de Endereço

- **Problema**: Atualizar automaticamente o endereço de todos os contatos associados a uma conta quando o endereço da conta é atualizado.
- **Solução**: Desenvolver uma classe Apex que atualize os endereços dos contatos com base no endereço da conta.

![Atualiza Endereco](image-18.png)

## Problemas com Triggers

### 1. Trigger de Atualização de Status

- **Problema**: Atualizar o status de um Caso para “Fechado” quando a data de resolução é preenchida.
- **Solução**: Implementar um trigger que verifique a data de resolução e atualize o status do caso.

![Atualiza Status](image-20.png)

### 2. Trigger de Notificação de Oportunidade

- **Problema**: Enviar uma notificação ao gerente de vendas quando uma oportunidade é fechada com sucesso.
- **Solução**: Desenvolver um trigger que envie uma notificação quando o campo Status da oportunidade for atualizado para “Fechado - Ganhou”.

![Notifica Oportunidade](image-21.png)

### 3. Trigger de Atualização de Inventário

- **Problema**: Atualizar o inventário de produtos quando um pedido é criado ou atualizado.
- **Solução**: Implementar um trigger que ajuste a quantidade de produtos no inventário com base nos pedidos.

![Atualiza Inventario](image-22.png)

### 4. Trigger de Validação de Data

- **Problema**: Garantir que a data de início de um projeto seja anterior à data de término.
- **Solução**: Desenvolver um trigger que valide as datas de início e término de um projeto.

![Valida Data](image-23.png)

### 5. Trigger de Criação de Tarefas

- **Problema**: Criar automaticamente uma tarefa de acompanhamento quando um lead é convertido em contato.
- **Solução**: Implementar um trigger que crie uma tarefa de acompanhamento ao converter um lead.

![Criacao de Tarefa](image-24.png)

## Problemas com Classes de Teste

### 1. Teste de Validação de Email

- **Problema**: Testar a classe que valida o formato e domínio do email.
- **Solução**: Criar uma classe de teste que verifique se a validação de email está funcionando corretamente.

![Valida Email](image-25.png)

### 2. Teste de Cálculo de Desconto

- **Problema**: Testar a classe que calcula o desconto baseado na quantidade de produtos.
- **Solução**: Desenvolver uma classe de teste que valide o cálculo do desconto.

![Teste Calculo de Desconto](image-26.png)

### 3. Teste de Conversão de Moeda

- **Problema**: Testar a classe que converte valores de uma moeda para outra.
- **Solução**: Criar uma classe de teste que verifique a precisão da conversão de moeda.

![Teste Para conversao moeda](image.png)

### 4. Teste de Geração de Relatórios

- **Problema**: Testar a classe que gera e envia relatórios mensais de vendas.
- **Solução**: Desenvolver uma classe de teste que valide a geração e envio de relatórios.

![Teste Gerar Relatorios](image-27.png)

### 5. Teste de Atualização de Endereço

- **Problema**: Testar a classe que atualiza os endereços dos contatos com base no endereço da conta.
- **Solução**: Criar uma classe de teste que verifique a atualização dos endereços dos contatos.

![Busca endereco](image-1.png)

## Tema Extra: Integração com API de CEP dos Correios

### Objetivo

Realizar a conexão com a API de CEP dos Correios para buscar informações de endereço.

### 1. Configuração da API

- Obtenha a URL da API dos Correios para consulta de CEP.

![Consulta pela API do CEP](image-28.png)

### 2. Desenvolvimento da Classe Apex

- Classe Apex para realizar chamadas HTTP à API dos Correios.

![API Correios](image-29.png)

