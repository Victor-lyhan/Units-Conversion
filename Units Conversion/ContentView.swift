//
//  ContentView.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Units Convertor")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                Form{
                    NavigationLink("Temperature",destination: SwiftUIView_temperature(phrase:"temperature type"))
                        .foregroundColor(.blue)
                        .padding(10)
                    NavigationLink("Length", destination: SwiftUIView_Length(phrase: "length type"))
                        .foregroundColor(.blue)
                        .padding(10)
                    NavigationLink("Mass",destination: SwiftUIView_Mass(phrase:"Mass type"))
                        .foregroundColor(.blue)
                        .padding(10)
                    NavigationLink("Volume",destination: SwiftUIView_Volume(phrase:"Volume type"))
                        .foregroundColor(.blue)
                        .padding(10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
