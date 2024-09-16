# **Projeto Globo Salesforce**

---

## **🔐 Login para Acesso à Org**

Para acessar a org do Salesforce e testar as implementações deste projeto, utilize as seguintes credenciais:

- **URL:** [Salesforce Login](https://login.salesforce.com)
- **Username:** _Seu e-mail cadastrado_
- **Password:** _Sua senha_

⚠️ *Certifique-se de ter acesso ao ambiente de sandbox ou produção conforme necessário para testar as funcionalidades descritas neste projeto.*

---

## **🎯 Objetivo**

O objetivo deste projeto é introduzir os conceitos e ferramentas principais da Salesforce, como automação de negócios, criação de objetos customizados, fluxo de trabalho e desenvolvimento com Apex e Visualforce.

---

## **📁 Objetos Customizados**

### **🌍 País**

Foi criado um objeto customizado chamado **País** com os seguintes campos:

- **Sigla (Obrigatório e Único):** Este campo é obrigatório e deve ser único para garantir que não haja dois países com a mesma sigla.
- **Moeda:** Campo que armazena a moeda utilizada no país.
- **Idioma:** Campo que guarda o idioma principal do país.

![Imagem criar pais](assets/Criar%20Pais.png)

---

## **📊 Objetos Padrões Customizados**

### **🏢 Conta (Account)**

Foram realizadas as seguintes customizações no objeto padrão **Conta (Account)**:

- **Valor Total de Vendas (Currency):** Campo para armazenar o valor total de vendas realizadas para aquela conta.
- **País (Lookup para País, Obrigatório):** Campo de relacionamento obrigatório para o objeto customizado **País**, conectando cada conta a um país específico.
- **Resumo do País (Formula Text):** Campo que exibe um resumo das informações do país relacionado à conta, com o seguinte formato:
  - `N: valor do Nome`
  - `S: valor da Sigla`
  - `I: valor do Idioma`
  - `M: valor da Moeda`

Caso alguma das informações não esteja disponível, o valor **N/A** será exibido.

![Criar Conta](assets/Criar%20Conta.png)

Exemplo da fórmula do campo de Resumo do País:

![Resumo Pais](assets/Resumo%20Pais.png)

---

## **🔄 Endpoint Customizado de Upsert de Conta**

Um endpoint foi desenvolvido para realizar o **Upsert** (inserção ou atualização) de uma conta, com contratos de entrada e saída bem definidos.

![EndPoint Upsert](assets/Account%20Upsert.png)

---

## **📝 Endpoint Customizado para Inserção de Ordem (Order)**

Foi criado um endpoint para realizar a inserção de uma nova **Ordem (Order)**, definindo os contratos de entrada e saída para este processo.

![EndPoint Insert](assets/Order%20Insert.png)

---

## **📧 Automação de Notificação por E-mail**

Foi implementada uma automação com interface gráfica para envio de notificação por e-mail sempre que uma conta for criada ou editada. O e-mail destinatário pode ser alterado diretamente pela interface gráfica.

![Atualiza Email da Conta](assets/Atualiza%20email%20da%20conta.png)

### **📩 Sempre que uma conta é criada ou editada, um e-mail de notificação é enviado.**

![Envia email de aviso sobre conta](assets/Envia%20email%20aviso.png)

---

## **🛠️ Automação para Atualizar Valor Total de Vendas**

Uma automação sem uso de código foi implementada para garantir que, sempre que uma nova **Ordem (Order)** for criada, o campo **Valor Total de Vendas** da conta relacionada seja atualizado com o valor da nova ordem.

![Automacao sem Codigo](assets/Automacao%20sem%20codigo.png)

---

## **⏲️ Agendamento de Trabalho para Excluir Orders**

Foi criado um agendamento diário para excluir **Orders** com datas maiores que 3 meses. O trabalho é executado todos os dias às 00:00.

![Maiores que 3 meses](assets/Maiores%20que%20tres%20meses.png)

---

## **✅ Testes Realizados**

Testes rigorosos foram realizados para garantir o funcionamento correto de todas as classes, triggers e automações implementadas.

![Teste Realizados](assets/Testes%20Realizados.png)

---

## **🗺️ Implementação do Google Maps com LWC**

Foi utilizada a tecnologia **LWC (Lightning Web Components)** para integrar o **Google Maps** no Salesforce, fornecendo uma interface visual e interativa.

![GoogleMap](assets/Google%20Map.png)
