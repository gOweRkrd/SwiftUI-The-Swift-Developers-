//
//  ContentView.swift
//  ActivityViewSwiftUI
//
//  Created by Александр Косяков on 19.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isSharePresented = false
    let customActivity = ActivityViewCustomActivity(title: "Telegram", imageName: "telegram") {
        print("Отправка в телеграмм")
    }
    
    var body: some View {
        Button ("share") {
            self.isSharePresented = true
        }.sheet(isPresented: $isSharePresented) {
            ActivityView(activityItems: ["message test"],
                         applicationActivities: [self.customActivity])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
