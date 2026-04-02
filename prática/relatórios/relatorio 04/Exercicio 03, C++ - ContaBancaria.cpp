//
// Created by Anna Bittencourt on 02/04/26.
//
#include <iostream>
#include <iomanip>
using namespace std;
int main() {
    float saldo;
    int opcao;
    float valor;
    cout << "Informe seu saldo inicial (ex: 1000.00): R$ ";
    cin >> saldo;
    do {
        cout << "\n--- Menu de Opções ---" << endl;
        cout << "1. Ver Saldo" << endl;
        cout << "2. Depositar" << endl;
        cout << "3. Sacar" << endl;
        cout << "4. Sair" << endl;
        cout << "Escolha uma opção: ";
        cin >> opcao;
        switch (opcao) {
            case 1:
                cout << "Seu saldo atual é: R$ " << fixed << setprecision(2) << saldo << endl;
                break;
            case 2:
                cout << "Digite o valor para depositar: R$ ";
                cin >> valor;
                if (valor > 0) {
                    saldo += valor;
                    cout << "Depósito realizado com sucesso!" << endl;
                } else {
                    cout << "Valor de depósito inválido." << endl;
                }
                break;
            case 3:
                cout << "Digite o valor para sacar: R$ ";
                cin >> valor;
                if (valor > saldo) {
                    cout << "Saldo Insuficiente." << endl;
                } else if (valor > 0) {
                    saldo -= valor;
                    cout << "Saque realizado com sucesso!" << endl;
                } else {
                    cout << "Valor de saque inválido." << endl;
                }
                break;
            case 4:
                cout << "Encerrando o programa. Até logo!" << endl;
                break;

            default:
                cout << "Opção inválida. Por favor, escolha uma opção válida." << endl;
                break;
        }

    } while (opcao != 4);

    return 0;
}