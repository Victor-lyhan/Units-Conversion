//
//  SwiftUIView08-volume.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/25.
//  cubic feet to cubic meters

import SwiftUI

struct SwiftUIView08: View {
    @State private var volume = ""
    @State private var calculation = 0.0
    let phrase : String
    var body: some View {
        VStack {
            Text(phrase)
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding(35)
            TextField("Enter the volume", text: $volume)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .keyboardType(.numberPad)
                .padding(30)
            Button("Convert"){
                if let volume = Double(volume){
                    calculation = volume * 0.0283
                }
            }
            Text("Your volume in cubic meters are：")
                .padding(20)
            Text("\(calculation, specifier: "%.2f")cubic meters")
                .padding(30)
            Spacer()
            
        }
    }
}


