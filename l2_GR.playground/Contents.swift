import UIKit

var a = 12;

if (a%2>0) {print ("нечетное");} else {print ("четное");};

if (a%3>0) {print ("не делится без остатка на три");} else {print ("делится без остатка на три");};

var numbers: [Int] = []

for i in 1...100 {
    
    numbers.append(i)
};

numbers = numbers.filter({$0 % 2>0})
numbers = numbers.filter({$0 % 3==0})

print(numbers)



// упражнения со звёздочкой, если хватит времени
var i=0
var ii=0
var iii=1
var iiii=0

func fib (fibnumber:Int)->Int {
    
    for _ in 0...fibnumber {
        iiii=ii+iii
        ii=iii
        iii=iiii
    }
   return (iiii)
}

for i in 1...100 {
    numbers.append(fib(fibnumber: i))
}
print (numbers);
