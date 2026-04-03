#include <iostream>
using namespace std;
void menu()
{
	cout << "Menu de opcoes:\n"
		 "1.Ver saldo\n"
		 "2.Depositar\n"
		 "3.Sacar\n"
		 "4.Sair\n" << endl;
}
//Criando uma funcao para armazenar os dados da conta Bancaria, X como paramentro(Escolha do que o usuario ira querer fazer)
void contaBancaria(int x, float &saldo)
{
	float depositar;
	float sacar;
	if(x == 1)
	{
		cout << " Seu saldo eh de R$" << saldo << endl;
	}
	else if(x == 2)
	{
		cout << "Quanto voce deseja depositar? ";
		cin >> depositar;
		saldo = saldo + depositar;
	}
	else if(x == 3)
	{
		cout << "Quanto voce deseja sacar? ";
		cin >> sacar;
		if(sacar > saldo)
			cout << "Saldo insuficiente" << endl;
		else
			saldo -= sacar;
	}
	else if(x == 4)
	{
		cout << "Voce escolheu sair" << endl;
	}
	else
		cout << "Opcao invalida, digite uma opcao valida" << endl;

}
int main()
{
	menu();
	int x;
	float saldo = 1000;
	cin >> x;
	while(x != 4)
	{
		contaBancaria(x, saldo);
		menu();
		cin >> x;
	}
	return 0;
}
