package main
import "fmt"
//Funcao para verificar se o tringulo pode ser formado
func formaTriangulo(a, b, c int) bool {
	return a < b+c && b < a+c && c < a+b
}
func main() {
  //Variaveis
	var a, b, c int
	fmt.Print("Digite os tres lados do triangulo: ")
	//Entrada de dados
	fmt.Scanln(&a, &b, &c)
	//Chama a funcao para verificar se foram trinagulo e seguir com o calculo 
	if formaTriangulo(a, b, c) {
		// Se formar, ira para avaliacao de qual tipo de triangulo forma
		switch {
		case a == b && b == c:
			fmt.Println("Triangulo Equilatero")
		case a == b || a == c || b == c:
			fmt.Println("Triangulo Isosceles")
		default:
			fmt.Println("Triangulo Escaleno")
		}
  //Se nao, nao forma trinagulo e o programa para
	} else {
		fmt.Println("Erro: os valores nao formam um triangulo")
	}
}