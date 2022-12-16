//
//  ContentView.swift
//  ToggleSwiftUI
//
//  Created by Александр Косяков on 16.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isonToggle = false
    
    var body: some View {
        VStack{
            ZStack {
                HStack {
                    VStack {
                        Text ("Кошелек")
                        Text ("Профиль")
                        // смещение элемента
                        Spacer().frame(height: 500)
                    }
                    Spacer()
                }
                // создаем View
                RoundedRectangle(cornerRadius: 10).fill(Color.yellow)
                // создаем действие по нажатию на switch
                    .offset(x:isonToggle ? 100:0)
                Text("Что то на экране").offset(x:isonToggle ? 100:0)
            }
            // создаем switch
            Toggle(isOn: $isonToggle, label: {
                Text("Показать настройки")
            }).padding()
            // анимация движения View
        }.animation(.spring(response: 0.5,
                            dampingFraction: 0.7,
                            blendDuration: 0.3))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
