//
//  ContentView.swift
//  PickerSwiftUI
//
//  Created by Александр Косяков on 16.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var section = 0
    @State var procentsSection = 0
    @State var isOn = false
    var settingsTime = ["5 min","10 min","15 min"]
    var procents = ["5 процентов","50 процентов","100 процентов"]
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $section,
                       label: Text("Время")) {
                    ForEach(0..<settingsTime
                        .count) {
                            Text(self.settingsTime[$0])
                        }
                }
                Toggle(isOn: $isOn) {
                    Text("Авиарежим").foregroundColor(isOn ? Color.gray:
                                                        Color.orange)
                }
                Picker(selection: $procentsSection,
                       label: Text("Подстветка")) {
                    ForEach(0..<procents
                        .count) {
                            Text(self.procents[$0])
                        }
                }
            }.navigationTitle("Настройки")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
