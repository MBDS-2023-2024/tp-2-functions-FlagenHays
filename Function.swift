
// Ecrire une fonction qui affiche les x premiers nombres pairs ou impairs
func PairsImpairs(_ x: Int, pairs: Bool) {
    var nombre = 1
    var count = 0
    
    while count < x {
        if (nombre % 2 == 0 && pairs) || (nombre % 2 != 0 && !pairs) {
            print(nombre)
            count += 1
        }
        nombre += 1
    }
}


// Ecrire une fonction qui affiche les x premiers nombres de la suite Fibonacci
func Fibonacci(_ x: Int) {
    var a = 0
    var b = 1
    
    for _ in 0..<x {
        print(a)
        let temp = a
        a = b
        b = temp + b
    }
}


// Ecrire une fonction qui calcule le factoriel d’un nombre x, utiliser 10 par défaut si aucun nombre n’est spécifié.
func factoriel(_ x: Int = 10) -> Int {
    if x == 0 {
        return 1
    }
    return x * factoriel(x - 1)
}


// Ecrire une fonction qui affiche les x premiers nombres premiers
func Premier(_ nombre: Int) -> Bool {
    if nombre <= 1 {
        return false
    }
    for i in 2..<nombre {
        if nombre % i == 0 {
            return false
        }
    }
    return true
}

func afficherPremiers(_ x: Int) {
    var nombre = 2
    var count = 0
    
    while count < x {
        if Premier(nombre) {
            print(nombre)
            count += 1
        }
        nombre += 1
    }
}


print("+++++ AFFICHAGE DES FONCTIONS +++++ \n")

print("\n+++++ x premiers nombres pairs ou impairs +++++")
PairsImpairs(10, pairs: true)

print("\n+++++ x premiers nombres de la suite Fibonacci +++++")
Fibonacci(10)

print("\n+++++ factoriel d’un nombre x +++++")
print("Factoriel de 5 : \(factoriel(10))")

print("\n+++++ x premiers nombres premiers +++++")
afficherPremiers(10)



