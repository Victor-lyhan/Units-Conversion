//
//  SwiftUIView-lengthPicker.swift
//  Units Conversion
//
//  Created by Victor Han on 2022/7/25.
//

import SwiftUI

struct SwiftUIView_Length: View {
    @State private var lengthType = ""
    let phrase: String
    var body: some View {
        VStack {
            Text(phrase)
                .fontWeight(.bold)
                .font(.title)
                .padding(35)
            NavigationView {
                Form {
                    Section("length type selection") {
                        Picker("length", selection: $lengthType) {
                            Text("inches->meters").tag("inches to meters")
                            Text("feets->meters").tag("feets to meters")
                            Text("miles->meters->kilometers").tag("miles to meters to kilometers")
                        }
                    }
                    Text("Converting from \(lengthType)")
                        .fontWeight(.bold)
                        .font(.system(size: 13))
                }
            }
            
            if String(lengthType) == "inches to meters"{
                NavigationLink("Length inches->meters", destination: SwiftUIView03(phrase: "Length inches->meters"))
                    .padding(10)
            }
            if String(lengthType) == "feets to meters"{
                NavigationLink("Length feets->meters", destination: SwiftUIView04(phrase:"Length feets->meters"))
                    .padding(10)
            }
            if String(lengthType) == "miles to meters to kilometers"{
                NavigationLink("Length miles->meters->kilometers", destination: SwiftUIView05(phrase:"Length miles->meters->kilometers"))
                    .padding(10)
            }
        }
    }
}

struct SwiftUIView_Length_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_Length(phrase: "Length")
    }
}

