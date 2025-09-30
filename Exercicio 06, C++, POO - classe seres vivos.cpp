#include <iostream>
#include <string>
using namespace std;

class SerVivo {
public:
    string nome;
    SerVivo(const string& n) : nome(n) {}
    virtual ~SerVivo() {} 

    virtual void apresentar() {
        cout << "Eu sou um ser vivo chamado " << nome << "." << endl;
    }
};

class Humano : public SerVivo {
public:
    Humano(const string& n) : SerVivo(n) {}
    void apresentar() { 
        cout << "Eu sou o humano " << nome << "." << endl;
    }
};

class Elfo : public SerVivo {
public:
    Elfo(const string& n) : SerVivo(n) {}
    void apresentar() {
        cout << "Eu sou o elfo " << nome << "." << endl;
    }
};

class Fada : public SerVivo {
public:
    Fada(const string& n) : SerVivo(n) {}
    void apresentar() {
        cout << "Eu sou a fada " << nome << "." << endl;
    }
};

int main() {
    SerVivo* lista[3];

    lista[0] = new Humano("Rosemeire");
    lista[1] = new Elfo("Vitoriano");
    lista[2] = new Fada("Tinkerbell");

    for (int i = 0; i < 3; i++) {
        lista[i]->apresentar();
    }

    for (int i = 0; i < 3; i++) {
        delete lista[i];
    }

    return 0;
}
