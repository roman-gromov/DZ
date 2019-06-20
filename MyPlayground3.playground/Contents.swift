import UIKit

var sm: Double = 0
var sy: Double = 0
var sa: Double = 0


let sum: Double = 1000000
let perc: Double = 12

sm = sum
sy = sum

func addm () {sm = sm+sm*(perc/12)/100}

for _ in 1...60 {
    addm ()
}


func addy () {sy = sy+sy*(perc)/100}

for _ in 1...5 {
    addy ()
}

sm = (sm*100).rounded()/100
sy = (sy*100).rounded()/100
sa = round(sum+5*sum*perc/100)


print("с ежемесячной капитализацией \(sm), с ежегодной капитализацией \(sy), без капитализации \(sa)")
