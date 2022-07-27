//
//  SwiftUIView-temperaturePicker.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/24.
//pick FtoC or CtoF

import SwiftUI

struct SwiftUIView_temperature: View {
    @State private var temperatureType = ""
    let phrase: String
    var body: some View {
        VStack {
            Text(phrase)
                .fontWeight(.bold)
                .font(.title)
                .padding(35)
            NavigationView {
                Form {
                    Section("temperature type selection") {
                        Picker("temperature", selection: $temperatureType) {
                            Text("°F->°C").tag("°F to °C")
                            Text("°C->°F").tag("°C to °F")
                        }
                    }
                    Text("Converting from \(temperatureType)")
                        .fontWeight(.bold)
                }
            }
            if String(temperatureType) == "°F to °C"{
                NavigationLink("Temperature°F->°C", destination: SwiftUIView02(phrase: "Temperature°F->°C"))
                    .padding(10)
            }
            if String(temperatureType) == "°C to °F"{
                NavigationLink("Temperature°C->°F", destination: SwiftUIView01(phrase: "Temperature°C->°F"))
                    .padding(10)
            }
        }
        
    }
    
    struct SwiftUIView_temperature_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView_temperature(phrase: "Temperature")
        }
    }
    
}
