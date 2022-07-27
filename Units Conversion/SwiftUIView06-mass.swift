//
//  SwiftUIView06-mass.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/24.
//pouds to kilograms

import SwiftUI

struct SwiftUIView06: View {
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
                    calculation = mass * 0.4536
                }
            }
            Text("Your mass in kilograms are：")
                .padding(20)
            Text("\(calculation, specifier: "%.2f")kilograms")
                .padding(30)           
            Spacer()
            
        }
    }
}

