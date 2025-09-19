#include <iostream>
using namespace std;

int main() 
{
    int quantidade;
    float nota, soma = 0;

    cout << "Digite a quantidade de notas: ";
    cin >> quantidade;

    for (int i = 1; i <= quantidade; i++) 
    {
        cout << "Digite a nota " << i << ": ";
        cin >> nota;

        while (nota < 0 || nota > 10) 
        {
            cout << "Nota invalida! Digite novamente (entre 0 e 10): ";
            cin >> nota;
        }

        soma += nota; 
    }

    float media = soma / quantidade;

    cout << "\nMedia final = " << media << endl;

    if (media >= 7) 
    {
        cout << "Aprovado" << endl;
    } else 
    {
        cout << "Reprovado" << endl;
    }

    return 0;
}
