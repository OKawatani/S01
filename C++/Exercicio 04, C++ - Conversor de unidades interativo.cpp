#include <iostream>
using namespace std;

// Função para converter Celsius em Fahrenheit
double celsiusParaFahrenheit(double celsius) {
    return (celsius * 9.0 / 5.0) + 32.0;
}

// Função para converter Celsius em Kelvin
double celsiusParaKelvin(double celsius) {
    return celsius + 273.15;
}

int main() 
{
    
  int opcao;
  double celsius;

    do {
        cout << "\n===== Conversor de Temperatura =====" << endl;
        cout << "1. Converter Celsius para Fahrenheit" << endl;
        cout << "2. Converter Celsius para Kelvin" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) 
        {
            case 1:
                cout << "Digite a temperatura em Celsius: ";
                cin >> celsius;
                cout << "Em Fahrenheit: " << celsiusParaFahrenheit(celsius) << "°F" << endl;
                break;

            case 2:
                cout << "Digite a temperatura em Celsius: ";
                cin >> celsius;
                cout << "Em Kelvin: " << celsiusParaKelvin(celsius) << " K" << endl;
                break;

            case 3:
                cout << "Saindo do programa..." << endl;
                break;

            default:
                cout << "Opcao invalida! Tente novamente." << endl;
        }

    } while (opcao != 3);

    return 0;
}
