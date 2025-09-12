package main

import "fmt"

func gerarFibonacci(total int) {
	x, y := 0, 1
	for contador := 0; contador < total; contador++ {
		fmt.Printf("%d ", x)
		x, y = y, x+y
	}
	fmt.Println()
}

func main() {
	var quantidade int
	fmt.Print("Digite quantos números da sequência Fibonacci deseja ver: ")
	fmt.Scan(&quantidade)

	gerarFibonacci(quantidade)
}
