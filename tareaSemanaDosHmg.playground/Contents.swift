//: Playground - noun: a place where people can play
//: Desarrollado por Henry Molina Gómez

import UIKit

for i in 0...100 {
    if i % 5 == 0 && i != 0 {
        print("\(i)\t Bingo")
    }
    if i % 2 == 0 {
        print("\(i)\t Par")
    }
    if i % 2 == 1 {
        print("\(i)\t Impar")
    }
    switch i {
    case 30...40:
        print("\(i)\t Viva Swift")
    default:
        break
    }
}

