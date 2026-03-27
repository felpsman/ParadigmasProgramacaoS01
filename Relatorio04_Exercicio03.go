package main
import "fmt"
// Função Fibonacci
func fibonacci(n int) {
	a, b := 0, 1
	for i := 0; i < n; i++ {
		fmt.Print(a, " ")
		a, b = b, a+b
	}
	fmt.Println()
}
func main() {
  //Variaveis
	var n int
	fmt.Print("Quantos números deseja gerar? ")
	//Entrada de dados
	fmt.Scanln(&n)
	fibonacci(n)
}