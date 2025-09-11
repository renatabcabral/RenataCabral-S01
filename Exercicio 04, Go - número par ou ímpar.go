package main

import (
	"fmt"
)

func main() {
	var valor int

	fmt.Print("Informe um número inteiro: ")
	fmt.Scan(&valor) 
	switch resto := valor % 2; resto {
	case 0:
		fmt.Printf("%d é um número par.\n", valor)
	default:
		fmt.Printf("%d é um número ímpar.\n", valor)
	}
}
