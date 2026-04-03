#include <iostream>
using namespace std;
//Funcao fibonacci
int fibonacci(int N)
{
	//Condicoes de parada
	if(N == 0)
		return 0;
	else if (N == 1)
		return 1;
	//Chamando a funcao recursiva
	else
		return fibonacci(N - 1)+fibonacci(N-2);
}
int main()
{
	//Declaracao de variveis
	int N;
	//Entrada de dados
	cout << "Entre com um numero para realizar a soma de fibonacci: " << endl; 
	cin>>N;
	cout<< "O resulto fibonacci de Fibonacci eh: " << fibonacci(N) << endl;
	return 0;
}
