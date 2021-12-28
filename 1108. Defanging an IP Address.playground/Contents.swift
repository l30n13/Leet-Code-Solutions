import UIKit

func defangIPaddr(_ address: String) -> String {
    return address.replacingOccurrences(of: ".", with: "[.]")
}


defangIPaddr("1.1.1.1")
defangIPaddr("255.100.50.0")
