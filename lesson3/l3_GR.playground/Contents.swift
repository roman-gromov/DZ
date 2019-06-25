import UIKit



enum EngineState {
    case on, off, pause, block
}
enum Marka {
    case RangeRover, Toyota, Jeep
}
enum Models {
    case Evoque, Vogue, Sport, SuperCharge, Velar, LC100, LC150, LC200, Prado
}
enum GrModels {
    case ZIL130, ZIL131
}

struct Legkovoy {
    let color: UIColor
    let marka: Marka
    let model: Models // модели
    let yearofdev: Int // возможно было бы правильнее взять пул годов выпуска, отнимать их от текущего, но понизится читаемость кода
    var EngineState: EngineState // двигатель работает, выключен или в режиме паузы на светофоре
    var BagValue: Int
    var WindowsState: Bool
    
    mutating func closewin() {
        WindowsState = true
    }
    mutating func openwin () {
        WindowsState = false
    }
    
}

struct Gruzovik {
    let color: UIColor
    let model: GrModels // модели
    var Pricep: Bool
    let yearofdev: Int // возможно было бы правильнее взять пул годов выпуска, отнимать их от текущего, но понизится читаемость кода
    var EngineState: Bool // двигатель работает, выключен
    var RangeOfPower: Double
}


var car1 = Legkovoy(color: .white, marka: .Toyota, model: .LC200, yearofdev: 2019, EngineState: .off, BagValue: 2000, WindowsState: true);
var car2 = Legkovoy(color: .blue, marka: .RangeRover, model: .Velar, yearofdev: 2019, EngineState: .off, BagValue: 2200, WindowsState: false);
var car3 = Gruzovik(color: .red, model: .ZIL130, Pricep: true, yearofdev: 1988, EngineState: true, RangeOfPower: 1511.11)


car1.EngineState = .on
car2.WindowsState = true

switch  car1.WindowsState {
case true :
    print("Открыты окна")
    
case false :
    print("Закрыты окна, нужно отключать двигатель")
    car1.EngineState = .off;
    
}


enum AlarmMods {case on, off, alarm, closedoors}
    
func caralarm(AlarmMode: AlarmMods) {
    if (AlarmMode == .on) {car2.EngineState = .block
    }
}



caralarm(AlarmMode: .on);

print ("Автомобиль \(car2.marka) модель \(car2.model) год выпуска \(car2.yearofdev) готов к транспортировке")
print ("Автомобиль \(car1.marka) модель \(car1.model) год выпуска \(car1.yearofdev) готов к транспортировке")
