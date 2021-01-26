// Cálculo do IMC

// Fórmula de Cálculo: IMC = Peso ÷ (Altura × Altura)

/*
 Faixas de Peso:
 IMC                    CLASSIFICAÇÃO    OBESIDADE (GRAU)
 MENOR QUE 18,5         MAGREZA             0
 ENTRE 18,5 E 24,9      NORMAL              0
 ENTRE 25,0 E 29,9      SOBREPESO           I
 ENTRE 30,0 E 39,9      OBESIDADE           II
 MAIOR OU IGUAL A 40,0  OBESIDADE GRAVE     III
 */

// Cálculo
let peso: Double = -110
let altura: Double = 1.82
let imc = peso / (altura * altura)

// 01 - Determinação de Faixas - usando Switch
switch imc {
case 0...18.49:
    print("Magreza")
case 18.5...24.9:
    print("Normal")
case 25.0...29.9:
    print("Sobrepeso")
case 30.0...39.9:
    print("Obesidade")
case 40.0...100.0:
    print("Obesidade Grave")
default:
    print("Peso indeterminado")
}

// 02 - Usando If Else
if imc < 0 {
    print("Peso indeterminado")
} else if imc < 18.5 {
    print("Magreza")
} else if imc < 25.0 {
    print("Normal")
} else if imc < 30.0 {
    print("Sobrepeso")
} else if imc < 40 {
    print("Obesidade")
} else {
    print("Obesidade Grave")
}

// Usando faixa e operador lógico (&& e ||)
if imc >= 0 && imc <= 18.4 {
    print("Magreza")
} else if imc >= 18.5 && imc <= 24.9 {
    print("Normal")
} else if imc >= 25.0 && imc <= 29.9 {
    print("Sobrepeso")
} else if imc >= 30.0 && imc <= 39.9 {
    print("Obesidade")
} else if imc >= 40.0 {
    print("Obesidade Grave")
} else {
    print("Peso indeterminado")
}



