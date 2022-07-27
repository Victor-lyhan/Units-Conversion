//
//  SwiftUIView05-length.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/24.
//miles to meters to kilometers

import SwiftUI

struct SwiftUIView05: View {
    @State private var length = ""
    @State private var calculation1 = 0.0
    @State private var calculation2 = 0.0
    let phrase : String
    var body: some View {
        VStack {
            Text(phrase)
                .fontWeight(.bold)
                .font(.system(size: 18))
                .padding(20)
            TextField("Enter the length", text: $length)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .keyboardType(.numberPad)
                .padding(30)
            Button("Convert to meters"){
                if let length = Double(length){
                    calculation1 = length * 1609.4
                }
            }
            Text("Your length in meters are：")
                .padding(10)
            Text("\(calculation1, specifier: "%.2f")meters")
                .padding(10)
            Text("------------")
                .padding(10)
            Button("Convert to kilometers"){
                if let length = Double(length){
                    calculation2 = length * 1.6094
                }
            }
            Text("Your length in kilometers are：")
                .padding(10)
            Text("\(calculation2, specifier: "%.2f")kilometers")
                .padding(30)
        }
    }
}
