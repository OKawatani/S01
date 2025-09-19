#include <iostream>
using namespace std;

float somarArray(float arr[], int tamanho) 
{
    float soma = 0;
    for (int i = 0; i < tamanho; i++) 
    {
        soma += arr[i];
    }
    return soma;
}

int main() 
{
    int tamanho;

    cout << "Digite o tamanho do array: ";
    cin >> tamanho;

    float arr[tamanho]; 

    cout << "Digite os valores do array:" << endl;
    for (int i = 0; i < tamanho; i++) 
    {
        cout << "Elemento " << i + 1 << ": ";
        cin >> arr[i];
    }

    float resultado = somarArray(arr, tamanho);

    cout << "A soma dos elementos do array é: " << resultado << endl;

    return 0;
}
