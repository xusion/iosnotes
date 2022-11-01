
import Foundation

extension UIDevice{
    /// 设备型号名称
    public var modelName: String {
        #if targetEnvironment(simulator)
           let identifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"]!
        #else
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = (element.value as? Int8), value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        #endif
        switch identifier {
        case "iPod5,1":                                     return "iPod Touch 5"
        case "iPod7,1":                                     return "iPod Touch 6"
            
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":         return "iPhone 4"
        case "iPhone4,1":                                   return "iPhone 4s"
            
        case "iPhone5,1", "iPhone5,2":                      return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                      return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                      return "iPhone 5s"
            
        case "iPhone7,2":                                   return "iPhone 6"
        case "iPhone7,1":                                   return "iPhone 6 Plus"
        case "iPhone8,1":                                   return "iPhone 6s"
        case "iPhone8,2":                                   return "iPhone 6s Plus"
            
        case "iPhone9,1", "iPhone9,3":                      return "iPhone 7"
        case "iPhone9,2", "iPhone9,4":                      return "iPhone 7 Plus"
            
        case "iPhone10,1", "iPhone10,4":                    return "iPhone 8"
        case "iPhone10,2", "iPhone10,5":                    return "iPhone 8 Plus"
        case "iPhone10,3", "iPhone10,6":                    return "iPhone X"
            
        case "iPhone11,2":                                  return "iPhone XS"
        case "iPhone11,4", "iPhone11,6":                    return "iPhone XS Max"
        case "iPhone11,8":                                  return "iPhone XR"
            
        case "iPhone12,1":                                  return "iPhone 11"
        case "iPhone12,3":                                  return "iPhone 11 Pro"
        case "iPhone12,5":                                  return "iPhone 11 Pro Max"
        case "iPhone12,8":                                  return "iPhone SE 2"
            
        case "iPhone13,1":                                  return "iPhone 12 mini"
        case "iPhone13,2":                                  return "iPhone 12"
        case "iPhone13,3":                                  return "iPhone 12 Pro"
        case "iPhone13,4":                                  return "iPhone 12 Pro Max"
            
        case "iPhone14,4":                                  return "iPhone 13 mini"
        case "iPhone14,5":                                  return "iPhone 13"
        case "iPhone14,2":                                  return "iPhone 13 Pro"
        case "iPhone14,3":                                  return "iPhone 13 Pro Max"
            
        case "iPhone14,6":                                  return "iPhone SE 3G"
        case "iPhone14,7":                                  return "iPhone 14"
        case "iPhone14,8":                                  return "iPhone 14 Plus"
        case "iPhone15,2":                                  return "iPhone 14 Pro"
        case "iPhone15,3":                                  return "iPhone 14 Pro Max"
            
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":    return "iPad 2"
        case "iPad2,5", "iPad2,6", "iPad2,7":               return "iPad Mini"
            
        case "iPad3,1", "iPad3,2", "iPad3,3":               return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":               return "iPad 4"
            
        case "iPad4,1", "iPad4,2", "iPad4,3":               return "iPad Air"
        case "iPad4,4", "iPad4,5", "iPad4,6":               return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":               return "iPad Mini 3"
            
        case "iPad5,1", "iPad5,2":                          return "iPad Mini 4"
        case "iPad5,3", "iPad5,4":                          return "iPad Air 2"
            
        case "iPad6,7", "iPad6,8":                          return "iPad Pro"
            
        case "iPad7,1":                                     return "iPad Pro 2G WIFI"
        case "iPad7,11":                                    return "iPad 7 WIFI"
        case "iPad7,12":                                    return "iPad 7 WIFI Cellular"
        case "iPad7,2":                                     return "iPad Pro WIFI Cellular"
        case "iPad7,3":                                     return "iPad Pro 105 WIFI"
        case "iPad7,4":                                     return "iPad Pro 105 WIFI Cellular"
        case "iPad7,5":                                     return "iPad 6 WIFI "
        case "iPad7,6":                                     return "iPad 6 WIFI Cellular"
            
        case "iPad8,1":                                     return "iPad Pro 11 WIFI"
        case "iPad8,10":                                    return "iPad Pro 11 2G WIFI Cellular"
        case "iPad8,11":                                    return "iPad Pro 4G WIFI"
        case "iPad8,12":                                    return "iPad Pro 4G WIFI Cellular"
        case "iPad8,2":                                     return "iPad Pro 11 1TB WIFI"
        case "iPad8,3":                                     return "iPad Pro 11 WIFI Cellular"
        case "iPad8,4":                                     return "iPad Pro 11 1TB WIFI Cellular"
        case "iPad8,5":                                     return "iPad Pro 3G WIFI"
        case "iPad8,6":                                     return "iPad Pro 3G 1TB WIFI"
        case "iPad8,7":                                     return "iPad Pro 3G WIFI Cellular"
        case "iPad8,8":                                     return "iPad Pro 3G 1TB WIFI Cellular"
        case "iPad8,9":                                     return "iPad Pro 11 2G WIFI"
            
        case "AppleTV5,3":                                  return "Apple TV"
            
        case "i386", "x86_64":                              return "Simulator"
            
        default:                                            return identifier
        }
    }
}
