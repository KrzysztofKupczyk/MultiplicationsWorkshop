//
//  ViewController.swift
//  Multiplications
//
//  Created by Krzysztof on 12/10/2018.
//  Copyright © 2018 Krzysztof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let wynik = GenerujLiczby3.generuj(osX: 3, osY: 6)
        GenerujLiczby3.wypisz(wartosci: wynik)
        // Do any additional setup after loading the view, typically from a nib.
    }




}

class GenerujLiczby {
    static func generuj(osX:Int, osY:Int ) -> [[Int]] {
        var tablicaTablic:[[Int]] = []

        for kolumna in stride(from: 0, to: osX, by: 1) {
            var tablica:[Int] = []
            for wiersz in stride(from: 0, to: osY, by: 1) {
                let wartosc = (wiersz + 1) * (kolumna + 1)
                tablica.append(wartosc)
            }
            
            print(tablicaTablic.append(tablica))
        }

        return tablicaTablic
    }
}

class GenerujLiczby2 {

    static func generuj(osX:Int, osY:Int ) -> [[Int]] {
        var tablicaTablic:[[Int]] = []

        for kolumna in stride(from: 0, to: osX, by: 1) {
            var tablica:[Int] = []
            for wiersz in stride(from: 0, to: osY, by: 1) {
                let wartosc = (wiersz + 1) + osY * (kolumna)
                tablica.append(wartosc)
            }
            tablicaTablic.append(tablica)
        }
        return tablicaTablic
    }

    static func wypisz(wartosci: [[Int]]) {
        for table in wartosci {
            print(table)
        }
    }
}
class GenerujLiczby3 {

    static func generuj(osX:Int, osY:Int ) -> [[Int]] {
        var tablicaTablic:[[Int]] = []

        for kolumna in stride(from: 0, to: osX, by: 1) {
            var tablica:[Int] = []
            for wiersz in stride(from: 0, to: osY, by: 1) {

                if kolumna%2 == 0 {
                    let wartosc = (wiersz + 1) + osY * (kolumna)
                    tablica.append(wartosc)
                }else{
                    let wartosc =  osY * (kolumna) - wiersz + osY
                    tablica.append(wartosc)
                }
            }
            tablicaTablic.append(tablica)
        }
        return tablicaTablic
    }

    static func wypisz(wartosci: [[Int]]) {
        for table in wartosci {
            print(table)
        }
    }
}

