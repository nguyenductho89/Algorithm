//
//  File.swift
//  
//
//  Created by Nguyễn Đức Thọ on 14/10/2021.
//

import Foundation

extension String {
    static func random(_ words: Int = 1) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return Array(0...words-1)
            .map { _ in
                //Create a word from random numbers of character
                let numberOfCharacters = Int.random(in: 1...7)
                return Array(0...numberOfCharacters)
                    .map {_ in letters.randomElement()!}
                    .reduce("") {$0 + String($1)}
            }
            //Reduce array of words into a string
            .reduce("", {$0 + " " + $1})
    }
}
