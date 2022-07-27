//
//  SwiftUIView-volumePicker.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/25.
//

import SwiftUI

struct SwiftUIView_Volume: View {
    @State private var volumeType = ""
    let phrase: String
    var body: some View {
        VStack {
            Text(phrase)
                .fontWeight(.bold)
                .font(.title)
                .padding(35)
            NavigationView {
                Form {
                    Section("volume type selection") {
                        Picker("volume", selection: $volumeType) {
                            Text("cubic feets->cubic meters").tag("cubic feets to cubic meters")
                            Text("gallons->liters").tag("gallons to liters")
                        }
                    }
                    Text("Converting from \(volumeType)")
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                }
            }
            if String(volumeType) == "cubic feets to cubic meters"{
                NavigationLink("Volume cubic feets->cubic meters", destination: SwiftUIView08(phrase:"cubic feets->cubic meters"))
                    .padding(10)
            }
            if String(volumeType) == "gallons to liters"{
                NavigationLink("Volume gallons->liters", destination: SwiftUIView09(phrase:"gallons->liters"))
                    .padding(10)
            }
        }
    }
}

struct SwiftUIView_Volume_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_Volume(phrase: "Volume")
    }
}

