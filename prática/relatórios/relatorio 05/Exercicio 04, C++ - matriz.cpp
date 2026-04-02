//
// Created by Anna Bittencourt on 02/04/26.
//
#include <iostream>
using namespace std;
int main() {
    int sala[5][5] = {0};
    int opcao = 0;
    while (opcao != 3) {
        cout << "\n--- Menu de Opcoes ---" << endl;
        cout << "1. Reservar Assento" << endl;
        cout << "2. Ver Mapa da Sala" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {
            case 1: {
                int f, c;
                cout << "Informe a fileira (0-4): ";
                cin >> f;
                cout << "Informe a coluna (0-4): ";
                cin >> c;
                if (f >= 0 && f <= 4 && c >= 0 && c <= 4) {
                    if (sala[f][c] == 0) {
                        sala[f][c] = 1;
                        cout << "Sucesso!" << endl;
                    } else if (sala[f][c] == 1) {
                        cout << "Erro: Assento ocupado!" << endl;
                    }
                } else {
                    cout << "Erro: Fileira ou coluna fora do limite (0-4)." << endl;
                }
                break;
            }
            case 2: {
                cout << "\nMapa da Sala:" << endl;
                for (int i = 0; i < 5; i++) {
                    for (int j = 0; j < 5; j++) {
                        cout << "[" << sala[i][j] << "] ";
                    }
                    cout << endl;
                }
                break;
            }
            case 3:
                cout << "Saindo do menu..." << endl;
                break;
            default:
                cout << "Opcao invalida. Tente novamente." << endl;
        }
    }
    int assentosOcupados = 0;
    int assentosVazios = 0;
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (sala[i][j] == 1) {
                assentosOcupados++;
            } else if (sala[i][j] == 0) {
                assentosVazios++;
            }
        }
    }
    cout << "\n--- Relatorio Final ---" << endl;
    cout << "Quantidade total de assentos ocupados: " << assentosOcupados << endl;
    cout << "Quantidade total de assentos vazios: " << assentosVazios << endl;
    return 0;
}