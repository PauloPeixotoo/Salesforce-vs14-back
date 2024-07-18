//Exercicio 1
const button = document.getElementById("trocaTexto")

button.addEventListener('click', () => {
    document.getElementById('paragrafo').innerText = 'Texto Alterado'
})

function Refresh(){
    window.location.reload()
  }

//Exercicio 2
const color = document.getElementById("alterarCor")

color.addEventListener('focusout', (e) =>{
    document.getElementById('cor-alterada').style.color = e.target.value
})

//Exercicio 3
let cont = 0

function adicionar(){
    cont += 1;
    document.getElementById("contador").innerText = cont
}

//Exercicio 4

function trocarFiltro(filtro){
    document.getElementById("aranha-hot").style.filter = filtro;
}

//Exercicio 5

document.getElementById('calcForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const num1 = parseFloat(document.getElementById('num1').value);
    const num2 = parseFloat(document.getElementById('num2').value);
    const operacao = document.getElementById('operacao').value;
    let resultado;

    switch(operacao) {
        case 'add':
            resultado = num1 + num2;
            break;
        case 'subtract':
            resultado = num1 - num2;
            break;
        case 'multiply':
            resultado = num1 * num2;
            break;
        case 'divide':
            if (num2 !== 0) {
                resultado = num1 / num2;
            } else {
                resultado = 'Essa é uma divisão por 0, insira outro número';
            }
            break;
        default:
            resultado = 'Operação inválida';
    }

    document.getElementById('resultado').innerText = `Resultado: ${resultado}`;
});
//Exercicio 6

function insert(num)
{
    var numero = document.getElementById('resultadoCalc').innerHTML;
    document.getElementById('resultadoCalc').innerHTML = numero + num;
}
function clean()
{
    document.getElementById('resultadoCalc').innerHTML = "";
}
function back()
{
    var resultadoCalc = document.getElementById('resultadoCalc').innerHTML;
    document.getElementById('resultadoCalc').innerHTML = resultadoCalc.substring(0, resultadoCalc.length -1);
}
function calcular()
{
    var resultadoCalc = document.getElementById('resultadoCalc').innerHTML;
    if(resultadoCalc)
    {
        document.getElementById('resultadoCalc').innerHTML = eval(resultadoCalc);
    }
    else
    {
        document.getElementById('resultadoCalc').innerHTML = "Nada..."
    }
}