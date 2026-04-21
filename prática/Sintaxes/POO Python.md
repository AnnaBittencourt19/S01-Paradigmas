## Estrutura básica e classes
- Em POO, a ideia é criar classes para representar objetos do mundo real
- Exemplo de uma classe simples:
```python
class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade

pessoa1 = Pessoa("Anna", 21)
print(pessoa1.nome)
```
## Atributos
- Os atributos são as características do objeto
- No Python, normalmente usamos self.atributo dentro da classe
```python
class Carro:
    def __init__(self, modelo, ano):
        self.modelo = modelo
        self.ano = ano
```
## Métodos
- Os métodos são as ações que o objeto pode fazer
- Exemplo:
```python
class Cachorro:
    def __init__(self, nome):
        self.nome = nome

    def latir(self):
        print("Au au")
```
- Nesse caso, latir é um método da classe Cachorro
## Objeto e instanciação
- Criar um objeto é instanciar uma classe
```python
class Aluno:
    def __init__(self, nome):
        self.nome = nome

aluno1 = Aluno("Carlos")
aluno2 = Aluno("Maria")
```
## Encapsulamento
- É uma forma de proteger ou controlar melhor os atributos
- Em Python, usamos muito o underline para indicar isso
```python
class Conta:
    def __init__(self, saldo):
        self._saldo = saldo
```
- Um underline _ quer dizer “uso interno”
- Dois underlines __ fazem o Python dificultar mais o acesso direto
## Herança
- Herança é quando uma classe filha aproveita coisas da classe mãe
```python
class Animal:
    def __init__(self, nome):
        self.nome = nome

class Gato(Animal):
    def miar(self):
        print("Miau")
```
## Polimorfismo
- Polimorfismo é quando classes diferentes respondem ao mesmo método de formas diferentes
```python
class Passaro:
    def fazer_som(self):
        print("Piu")

class Vaca:
    def fazer_som(self):
        print("Muu")
```
## Abstração
- Abstração é focar no que o objeto faz, sem se preocupar com todos os detalhes internos
- Exemplo com classe abstrata:
```python
from abc import ABC, abstractmethod

class Forma(ABC):
    @abstractmethod
    def area(self):
        pass
```
## Construtor
- O construtor no Python é o método __init__
- Ele é chamado quando criamos o objeto
```python
class Produto:
    def __init__(self, nome, preco):
        self.nome = nome
        self.preco = preco
```
## Exemplo completo
```python
class Pessoa:
    def __init__(self, nome):
        self.nome = nome

    def apresentar(self):
        print("Olá, meu nome é", self.nome)

class Professor(Pessoa):
    def apresentar(self):
        print("Sou o professor", self.nome)

p1 = Pessoa("Ana")
p2 = Professor("Carlos")

p1.apresentar()
p2.apresentar()
```
