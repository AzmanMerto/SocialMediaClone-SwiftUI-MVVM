//
//  FlagWrapper.swift
//  Crewl
//
//  Created by NomoteteS on 6.12.2022.
//

import Foundation
import SwiftUI

func countryName(countryCode: String) -> String? {
        let current = Locale(identifier: "en_US")
        return current.localizedString(forRegionCode: countryCode)
    }

func flag(country:String) -> String {
        let base : UInt32 = 127397
        var flag = ""
        for v in country.unicodeScalars {
            flag.unicodeScalars.append(UnicodeScalar(base + v.value)!)
        }
        return flag
    }


func getCountryCode (_ country : String) -> String
{
    if let key = countryDictionary.first(where: { $0.value == country })?.key {
        return key
    }
    return ""
}

class ObservableTextField: ObservableObject {
    
    @Published var value = "" {
        didSet {
            if value.count > 3 {
                value = String(value.prefix(3))
            }
        }
    }
    
}
