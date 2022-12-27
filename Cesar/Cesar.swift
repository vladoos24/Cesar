//
//  Cesar.swift
//  Cesar
//
//  Created by Владислав Бац on 27.12.2022.
//

import Foundation

public class Cesar {
    public func cipher(messageToCipher: String, shift: Int) -> String {
        var ciphredMessage = ""

        for char in messageToCipher.unicodeScalars {
            // convert to `Int`
            var unicode = Int(char.value)

            if unicode > 64 && unicode < 123 {
                var modifiedShift = shift
                if unicode >= 65 && unicode <= 90 {
                    while unicode + modifiedShift > 90 {
                        //return to A
                        modifiedShift -= 26
                    }
                } else if unicode >= 97 && unicode <= 122 {
                    while unicode + modifiedShift > 122 {
                        //return to a
                        modifiedShift -= 26
                    }
                }

                unicode += modifiedShift
            }

            ciphredMessage += String(UnicodeScalar(unicode)!)
        }
        
        return ciphredMessage
    }
}
