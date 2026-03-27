package main
import "fmt"
//Verificando se o nome do usuario eh aceito
func ValidarUsuario(nome string) (bool, string) {
	if len(nome) >= 8 {
		return true, "Usuario criado com sucesso!"
	}
	return false, "Erro: O nome de usuario eh muito curto"
}

func main() {
  //Variavel string do usario 
	var usuario string
	//Pedindo pro usuairo digitar o nome ate ser um nome valido
	for {
		fmt.Print("Digite um nome de usuario: ")
		fmt.Scanln(&usuario)
    //Verifica chamando a funcao, de verificacao, se o nome do usuario eh valido
		valido, mensagem := ValidarUsuario(usuario)
		fmt.Println(mensagem)
    //Se for valido, o programa para
		if valido {
			break
		}
	}
}