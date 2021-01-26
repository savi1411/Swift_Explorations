print("******* Regras de Pontuação *********")
print("Todo esse código, escrito em javascript, deve ser portado para Swift")
print("Em alguns exercícios, o código deve ser criado do zero, mas já em Swift")
print("Cada exercício vale um ponto")
print("A lógica original não pode ser modificada")
print("Erro de sintaxe invalida todo a tarefa")
print("Erro de lógica invalida o exercício")
print("Uso de boas práticas acrescenta + 0.75 a cada exercício")

// *** EXERCÍCIO 01 ***
/*
    Perguntei à Alexa se devia levar um casaco
    Ela respondeu: Não, Carlos, pode ir com uma roupa leva hoje
    Os critérios que ela pode ter usado são os seguintes:
    - Se a temperatura estiver abaixo de 21ºC, ela recomenda
        levar um casaco
    - Se a temperatura estiver igual ou acima de 21ºC, ela recomenda
        usar roupas leves
    ATENÇÃO: Vamos pressupor que já temos a temperatura calculado
*/
let temperatura = 12        // var -> let - Boas práticas
if temperatura >= 21 {    // () desnecessários em swift
    print("Pode vestir roupas leves hoje")
} else {
    print("Melhor levar um casaco")
}

// *** EXERCÍCIO 02 ***
/*
    Os engenheiros de IA da Amazon inseriram mais uma condição no algoritmo
    da Alexa:
    - Se a temperatura estiver abaixo de 12ºC, ela questiona se você precisa
        mesmo sair de casa, pois está muito frio
    Como fica o nosso if neste caso?
*/

//  Espaço para codificação da solução
if temperatura < 12 {
    print("Tem certeza que quer sair de casa? Está muito frio!")
} else if temperatura >= 21 {    // (parêntesis) desnecessários em swift
    print("Pode vestir roupas leves hoje")
} else {
    print("Melhor levar um casaco")
}
// Fim da codificação



// *** EXERCÍCIO 03 ***
/*
    Avaliar média para aprovação do aluno
    Se média de (nota1 + nota2) for maior ou igual a 6.0 (seis) o aluno estará aprovado
    Porém o o número de faltas não poderá ser superior a 25
    Caso contrário, o aluno estará reprovado
*/

// Solução utilizando if-else
let nota1 = 7.0
let nota2 = 5.0
let media = (nota1 + nota2) / 2
let faltas = 25
print("Situação do aluno:")
print("Média: ", media, " - Faltas: ", faltas)
if media >= 6.0 && faltas <= 25 { // (parêntesis) desnecessários em swift
    print("Aluno aprovado")
} else {
    print("Aluno reprovado")
}

// Solução utilizando variável booleana
let aprovado = (media >= 6.0 && faltas <= 25)
if aprovado {   // (parêntesis) desnecessários em swift
    print("Aluno aprovado")
} else {
    print("Aluno reprovado")
}

// *** EXERCÍCIO 04 ***
/*
    Avaliar se um estudante entrou na faculdade
    Para entrar, tem que obedecer uma destas
    condições:
    1) Aprovado no vestibular
    2) Passou no ENEM
*/
let vestibular = false       // Variável booleana
let enem = false
if vestibular || enem {     // (parêntesis) desnecessários em swift
    print("Entrou na faculdade")
} else {
    print("NÃO entrou na faculdade")
}

// *** EXERCÍCIO 05 ***
// Regra de Negócio: Para ser admitido no programa de trainees, a pessoa
//  precisa:
//  - Conhecer as linguagens Kotlin ou Swift, e
//  - Falar inglês fluentemente

//  Espaço para codificação da solução
let sabeKotlin = false
let sabeSwift = true
let sabeIngles = true
let souTrainee = sabeIngles && (sabeKotlin || sabeSwift)
if souTrainee {     // (parêntesis) desnecessários em swift
    print("Consegui a vaga! 😁")
} else {
    print("Preciso me preparar melhor...😞")
}
// Fim da codificação





