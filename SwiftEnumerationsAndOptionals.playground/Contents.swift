let week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

func weekdayOrWeekend(day: String) -> String {
    switch day {
        case "Saturday", "Sunday" : return "Weekend"
        case  "Monday", "Tuesday", "Wednesday", "Thursday", "Friday": return "Weekday"
        default: return "This isn't a valid day in the Western calendar"
    }
}

func muteNotifications(day: String) -> Bool {
    if day == "Weekend" {
        return true
    }
    else {
        return false
    }
}

let result = weekdayOrWeekend(week[4])
let isMuted = muteNotifications(result)

/*
much more efficient way of handling this problem
*/
 
enum Day { //enums are usually singular (Day)
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}


enum DayType {
    case Weekday, Weekend // don't have to write case every time, can be separated by commas
}

func weekdayOrWeekend(day: Day) -> DayType { //exhaustive, so no default case
    switch day {
    case .Saturday, .Sunday: return .Weekend //used own data type to get rid of strings
    default: return .Weekday
    }
}

func muteNotifications(dayType: DayType) -> Bool {
    switch dayType {
    case .Weekend: return true
    case .Weekday: return false
    }
}

let dayType = weekdayOrWeekend(.Saturday)
let isWeekend = muteNotifications(dayType)


//Color Objects

import CoreGraphics
import UIKit

enum ColorComponents {
    case RGB (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    case HSB /*hue, saturation, brightness */ (CGFloat, CGFloat, CGFloat, CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .RGB(let redValue, let greenValue, let blueValue, let alphaValue):
            return UIColor(red: redValue/255.0, green: greenValue/255.0, blue: blueValue/255.0, alpha: alphaValue)
        case .HSB(let hueValue, let saturationValue, let brightnessValue, let alphaValue):
            return UIColor(hue: hueValue/360.0, saturation: saturationValue/100.0, brightness: brightnessValue/100.0, alpha: alphaValue)
        }
    }
}

ColorComponents.RGB(red: 61.0, green: 120.0, blue: 198.0, alpha: 1.0).color()

