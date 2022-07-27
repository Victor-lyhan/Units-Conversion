//
//  SwiftUIView04-length.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/24.
// feets to meters

import SwiftUI

struct SwiftUIView04: View {
    @State private var length = ""
    @State private var calculation = 0.0
    let phrase : String
    var body: some View {
        VStack {
            Text(phrase)
                .fontWeight(.bold)
                .font(.title)
                .padding(35)
            TextField("Enter the length", text: $length)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .keyboardType(.numberPad)
                .padding(30)
            Button("Convert"){
                if let length = Double(length){
                    calculation = length * 0.3048
                }
            }
            Text("Your length in meters are：")
                .padding(20)
            Text("\(calculation)meters")
                .padding(40)
         
            Spacer()
            
        }
    }
}


struct SwiftUIView04_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView03(phrase: "Length")
    }
}

