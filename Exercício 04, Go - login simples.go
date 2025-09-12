package main

import "fmt"

func loginValido(user, pass string) bool {
	if user == "senha" && pass == "admin" {
		return true
	}
	return false
}

func main() {
	var nomeUsuario, senhaUsuario string

	for tentativa := 1; ; tentativa++ {
		fmt.Print("Usuário: ")
		fmt.Scan(&nomeUsuario)

		fmt.Print("Senha: ")
		fmt.Scan(&senhaUsuario)

		if loginValido(nomeUsuario, senhaUsuario) {
			fmt.Println("Login bem-sucedido!")
			break
		} else {
			fmt.Println("Usuário ou senha incorretos. Tente novamente.")
		}
	}
}
