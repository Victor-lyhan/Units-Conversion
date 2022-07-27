//
//  SwiftUIView01-temperature.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/22.
//degrees celcius to degrees Fahrenheit

import SwiftUI

struct SwiftUIView01: View {
    @State private var temperatureC = ""
    @State private var calculation = 0.0
    let phrase : String
    var body: some View {
        VStack {
            Text(phrase)
                .fontWeight(.bold)
                .font(.title)
                .padding(35)
            TextField("Enter the temperature", text: $temperatureC)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .keyboardType(.numberPad)
                .padding(30)
            Button("Convert"){
                if let temperature = Double(temperatureC){
                    calculation = temperature * 9/5 + 32
                }
            }
            Text("The temperature in degrees Fahrenheit is：")
                .padding(20)
            Text("\(calculation, specifier: "%.2f")°F")
                .padding(40)
            Spacer()
            
        }
    }
}


struct SwiftUIView01_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView01(phrase: "Temperature")
    }
}
