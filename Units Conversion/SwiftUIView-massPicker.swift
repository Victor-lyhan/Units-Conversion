//
//  SwiftUIView-massPicker.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/25.
//

import SwiftUI

struct SwiftUIView_Mass: View {
    @State private var massType = ""
    let phrase: String
    var body: some View {
        VStack {
            Text(phrase)
                .fontWeight(.bold)
                .font(.title)
                .padding(35)
            NavigationView {
                Form {
                    Section("mass type selection") {
                        Picker("mass", selection: $massType) {
                            Text("pouds->kilograms").tag("pouds to kilograms")
                            Text("kilograms->pounds").tag("kilograms to pounds")
                        }
                    }
                    Text("Converting from \(massType)")
                        .fontWeight(.bold)
                }
            }
            if String(massType) == "pouds to kilograms"{
                NavigationLink("Mass pounds->kilograms", destination: SwiftUIView06(phrase:"Mass pounds->kilograms"))
                    .padding(10)
            }
            if String(massType) == "kilograms to pounds"{
                NavigationLink("Mass kilograms->pounds", destination: SwiftUIView07(phrase:"Mass kilograms->pounds"))
                    .padding(10)
            }
        }
    }
}

struct SwiftUIView_Mass_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_Mass(phrase: "Mass")
    }
}

