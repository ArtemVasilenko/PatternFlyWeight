

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color1 = UIColor.red
        let color2 = UIColor.red
        
        let color3 = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        let color4 = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        
        let color5 = UIColor.Rgba(red: 1, green: 0, blue: 0, alpha: 1)
        let color6 = UIColor.Rgba(red: 1, green: 0, blue: 0, alpha: 1)
        
        print(color1===color2)
        print(color3===color4)
        print(color5===color6) //сравнение объектов по памяти
    }
    
}


extension UIColor {
    static var colorStore: [String:UIColor] = [:]
    class func Rgba(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
    
        let key = "\(red) \(green) \(blue) \(alpha)"
        
        if let color = colorStore[key] {
            return color
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        
        colorStore[key] = color
        return color
    }
    
}
