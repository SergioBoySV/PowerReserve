//
//  PwrSavingScreen.swift
//  PowerReserve
//
//  Created by Yash Verma on 2/25/24.
//

import SwiftUI

struct PwrSavingScreen: View {
    @State private var currentTime = Date()

    var body: some View {
        ZStack{
            
            Color(.black).ignoresSafeArea()
            
            
            
            
            VStack {
                
                                
                Image("logo")
                    .resizable()
                    .frame(width: 120, height: 120)
                Text("\(formattedTime())")
                    .font(.largeTitle)
                    .foregroundColor(Color(UIColor.init(displayP3Red: 0.2, green: 0.4, blue: 0.2, alpha: 1.0)))
                    .onAppear {
                        // Update the time every second
                        let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                            currentTime = Date()
                        }
                        // Make sure to invalidate the timer when the view disappears
                        RunLoop.current.add(timer, forMode: .common)
                        
                    }
                
                Text("Uber: " + uniqueIdentifier)
                    .font(.headline)
                    .foregroundColor(Color(UIColor.init(displayP3Red: 0.2, green: 0.4, blue: 0.2, alpha: 1.0)))
            }
        }
    }
    
        var uniqueIdentifier = autoGenUberCode()

        private func formattedTime() -> String {
            let formatter = DateFormatter()
            formatter.timeStyle = .medium
            return formatter.string(from: currentTime)
        }
    }


func autoGenUberCode() -> String{

    let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let numbers = "0123456789"
        
        var randomString = ""
        
        for _ in 0..<3 {
            let randomLetterIndex = Int(arc4random_uniform(UInt32(letters.count)))
            let randomLetter = letters[letters.index(letters.startIndex, offsetBy: randomLetterIndex)]
            randomString.append(randomLetter)
        }
        
        for _ in 0..<3 {
            let randomNumberIndex = Int(arc4random_uniform(UInt32(numbers.count)))
            let randomNumber = numbers[numbers.index(numbers.startIndex, offsetBy: randomNumberIndex)]
            randomString.append(randomNumber)
        }
        
        return randomString
}
    



#Preview {
    PwrSavingScreen()
}
