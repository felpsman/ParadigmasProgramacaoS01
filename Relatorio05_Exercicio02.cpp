#include <iostream>
using namespace std;
float multiplicaArray(float arr[],int tamanho){
	int resultado=1;
	for(int i=0;i<tamanho;i++)
		resultado=arr[i]*resultado;
	return resultado;
}
int main()
{	
	//Declaracao de variaveis
	float arr[10];
	int tamanho;
	//Entrada de dados
	cout << "Quantos numeros voce ira querer entrar? " << endl;
	cin >> tamanho;
	 for(int i = 0; i < tamanho; i++) {
        cin >> arr[i];
    }
	//Saida
	cout<< multiplicaArray(arr,tamanho);
	return 0;
}