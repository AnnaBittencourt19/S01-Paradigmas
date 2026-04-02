//
// Created by Anna Bittencourt on 02/04/26.
//
#include <iostream>

using namespace std;
float multiplicaArray(float arr[], int tamanho) {
    float produto = 1.0;
    for (int i = 0; i < tamanho; i++) {
        produto *= arr[i];
    }
    return produto;
}

int main() {
    int tamanho;
    cout << "Quantos valores você deseja inserir? ";
    cin >> tamanho;
    if (tamanho <= 0) {
        cout << "Quantidade inválida." << endl;
        return 1;
    }
    float* arr = new float[tamanho];
    for (int i = 0; i < tamanho; i++) {
        cout << "Digite o valor " << (i + 1) << ": ";
        cin >> arr[i];
    }
    float resultado = multiplicaArray(arr, tamanho);
    cout << "O produto dos valores no array é: " << resultado << endl;
    delete[] arr;

    return 0;
}