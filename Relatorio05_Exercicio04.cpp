#include <iostream>
using namespace std;
void menu()
{
	cout << "\nMenu:\n"
	     << "1. Reservar Assento\n"
	     << "2. Ver Mapa da Sala\n"
	     << "3. Sair\n";
}
// função principal da lógica
void sistemaCinema(int opcao, int sala[5][5])
{
	int f, c;
	if(opcao == 1)
	{
		cout << "Digite a fileira (0-4): ";
		cin >> f;
		cout << "Digite a coluna (0-4): ";
		cin >> c;
		if(sala[f][c] == 0)
		{
			sala[f][c] = 1;
			cout << "Sucesso!" << endl;
		}
		else
			cout << "Erro: Assento ocupado!" << endl;
	}
	else if(opcao == 2)
	{
		cout << "\nMapa da Sala:\n";

		for(int i = 0; i < 5; i++)
		{
			for(int j = 0; j < 5; j++)
				cout << "[" << sala[i][j] << "] ";
			cout << endl;
		}
	}
	else if(opcao == 3)
		cout << "Saindo..." << endl;
	else
		cout << "Opcao invalida!" << endl;
}
int main()
{
	int sala[5][5] = {0}; //inicializa tudo com 0
	int opcao;

	//loop principal
	do {
		menu();
		cin >> opcao;
		sistemaCinema(opcao, sala);
	} while(opcao != 3);
	//Relatório final
	int ocupados = 0;
	int vazios = 0;
	for(int i = 0; i < 5; i++)
	{
		for(int j = 0; j < 5; j++)
		{
			if(sala[i][j] == 1)
				ocupados++;
			else
				vazios++;
		}
	}
	cout << "\nRelatorio Final:\n";
	cout << "Ocupados: " << ocupados << endl;
	cout << "Vazios: " << vazios << endl;
	return 0;
}