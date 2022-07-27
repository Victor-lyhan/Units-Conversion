//
//  SwiftUIView-temperature.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/24.
//

import SwiftUI

//struct SwiftUIView_temperature: View {
//    @State private var temperatureType = ""
//    let phrase: String
//    var body: some View {
//        VStack {
//            Text(phrase)
//                .fontWeight(.bold)
//                .font(.title)
//                .padding(35)
//           Picker ("temperature type selection", selection: $temperatureType){
//                Text("°F->°C").tag("FtoC")
//                Text("°C->°F").tag("CtoF")
//            }
//            .pickerStyle(SegmentedPickerStyle())
//            .padding()
//        }
//        .onChange(of: temperatureType, perform: { newValue in
//            goToView()
//                })
//    }
//    func goToView(){
//        if String(temperatureType) != nil{
//            if String(temperatureType) == "FtoC"{
//                NavigationLink("Temperature°F->°C", destination: SwiftUIView02(phrase: "Temperature°F->°C" ))
//            }
//            if String(temperatureType) == "CtoF"{
//
//                NavigationLink("Temperature°C->°F", destination: SwiftUIView01(phrase: "Temperature°C->°F" ))
//            }
//        }
//    }
//
//}

//struct SwiftUIView_temperature_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUIView_temperature(phrase: "Temperature")
//   }
//}
