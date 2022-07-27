//
//  SwiftUIView02-temperature2.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/23.
// degrees Fahrenheit to degrees celcius 

import SwiftUI

struct SwiftUIView02: View {
    @State private var temperatureF = ""
    @State private var calculation = 0.0
    let phrase : String
    var body: some View {
        VStack {
            Text(phrase)
                .fontWeight(.bold)
                .font(.title)
                .padding(35)
            TextField("Enter the temperature", text: $temperatureF)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .keyboardType(.numberPad)
                .padding(30)
            Button("Convert"){
                if let temperature = Double(temperatureF){
                    calculation = (temperature - 32) * 5/9
                }
            }
            Text("The temperature in degrees Celsius is：")
                .padding(20)
            Text("\(calculation, specifier: "%.2f")°C")
                .padding(40)
            Spacer()
        }
    }
}


struct SwiftUIView02_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView02(phrase: "Temperature")
    }
}
