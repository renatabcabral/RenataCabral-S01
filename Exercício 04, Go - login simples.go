package main

import "fmt"

func loginCorreto(u, s string) bool {
	if u == "senha" && s == "admin" {
		return true
	}
	return false
}

func main() {
	var usuario, senha string

	for tentativa := 1; ; tentativa++ {
		fmt.Print("Usuário: ")
		fmt.Scan(&usuario)

		fmt.Print("Senha: ")
		fmt.Scan(&senha)

		switch loginCorreto(usuario, senha) {
		case true:
			fmt.Println("Login bem-sucedido!")
			return
		default:
			fmt.Println("Usuário ou senha incorretos. Tente novamente.")
		}
	}
}
