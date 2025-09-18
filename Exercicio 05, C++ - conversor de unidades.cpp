#include <iostream>
using namespace std;

double celsiusParaFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
}

double celsiusParaKelvin(double celsius) {
    return celsius + 273.15;
}

int main() {
    int opcao;
    double celsius;

    do {
        cout << "\n===== MENU =====" << endl;
        cout << "1. Converter Celsius para Fahrenheit" << endl;
        cout << "2. Converter Celsius para Kelvin" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {
            case 1:
                cout << "Digite a temperatura em Celsius: ";
                cin >> celsius;
                cout << "Temperatura em Fahrenheit: "
                     << celsiusParaFahrenheit(celsius) << endl;
                break;

            case 2:
                cout << "Digite a temperatura em Celsius: ";
                cin >> celsius;
                cout << "Temperatura em Kelvin: "
                     << celsiusParaKelvin(celsius) << endl;
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
