//
//  ViewController.swift
//  Multiplications
//
//  Created by Krzysztof on 12/10/2018.
//  Copyright © 2018 Krzysztof. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var wynik = GeneratorLiczb.generujTabliceMnozenia(liczbaKolumn: 10, liczbaWierszy: 5)
        wypiszNaKonsoli(wartosci: wynik)
        wynik = GeneratorLiczb.generujLiczby(liczbaKolumn: 8, liczbaWierszy: 6)
        wypiszNaKonsoli(wartosci: wynik)
        wynik = GeneratorLiczb.generujLiczby(liczbaKolumn: 9, liczbaWierszy: 7)
        wypiszNaKonsoli(wartosci: wynik)
    }

    private func wypiszNaKonsoli(wartosci: [[Int]]) {
        for table in wartosci {
            print(table)
        }
    }
}

final class GeneratorLiczb {
    // Generuje 2 wymiarową tablicę.
    // Przykład użycia:
    // let wynik = generujTabliceMnozenia(liczbaKolumn:6, liczbaWierszy: 9)
    // print(wynik[kolumna][wiersz] , gdzie kolumna i wiersz to liczby z zakresu 0-5
    static func generujTabliceMnozenia(liczbaKolumn:Int, liczbaWierszy:Int ) -> [[Int]] {
        var tablicaTablic:[[Int]] = []

        for kolumna in stride(from: 0, to: liczbaKolumn, by: 1) {
            var tablica:[Int] = []
            for wiersz in stride(from: 0, to: liczbaWierszy, by: 1) {
                let wartosc = (wiersz + 1) * (kolumna + 1)
                tablica.append(wartosc)
            }
            
            print(tablicaTablic.append(tablica))
        }

        return tablicaTablic
    }

    static func generujLiczby(liczbaKolumn:Int, liczbaWierszy:Int ) -> [[Int]] {
        var tablicaTablic:[[Int]] = []

        for kolumna in stride(from: 0, to: liczbaKolumn, by: 1) {
            var tablica:[Int] = []
            for wiersz in stride(from: 0, to: liczbaWierszy, by: 1) {
                let wartosc = (wiersz + 1) + liczbaWierszy * (kolumna)
                tablica.append(wartosc)
            }
            tablicaTablic.append(tablica)
        }
        return tablicaTablic
    }

    static func generujLiczby2(liczbaKolumn:Int, liczbaWierszy:Int ) -> [[Int]] {
        var tablicaTablic:[[Int]] = []

        for kolumna in stride(from: 0, to: liczbaKolumn, by: 1) {
            var tablica:[Int] = []
            for wiersz in stride(from: 0, to: liczbaWierszy, by: 1) {

                if kolumna%2 == 0 {
                    let wartosc = (wiersz + 1) + liczbaWierszy * (kolumna)
                    tablica.append(wartosc)
                }else{
                    let wartosc =  liczbaWierszy * (kolumna) - wiersz + liczbaWierszy
                    tablica.append(wartosc)
                }
            }
            tablicaTablic.append(tablica)
        }
        return tablicaTablic
    }
}

