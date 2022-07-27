//
//  SwiftUIView07-mass.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/24.
//kilograms to pounds

import SwiftUI

struct SwiftUIView07: View {
    @State private var mass = ""
    @State private var calculation = 0.0
    let phrase : String
    var body: some View {
        VStack {
            Text(phrase)
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding(35)
            TextField("Enter the mass", text: $mass)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .keyboardType(.numberPad)
                .padding(30)
            Button("Convert"){
                if let mass = Double(mass){
                    calculation = mass * 2.2046
                }
            }
            Text("Your mass in pounds are：")
                .padding(20)
            Text("\(calculation, specifier: "%.2f")pounds")
                .padding(30)           
            Spacer()
            
        }
    }
}

