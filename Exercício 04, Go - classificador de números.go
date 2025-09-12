package main

import "fmt"

func decideSinal(n int) string {
	if n > 0 {
		return "O valor informado é positivo"
	} else if n < 0 {
		return "O valor informado é negativo"
	}
	return "O valor informado é zero"
}

func main() {
	var dado int

	fmt.Print("Digite um número inteiro: ")
	fmt.Scan(&dado)

	resultado := decideSinal(dado)
	fmt.Println(resultado)
}
