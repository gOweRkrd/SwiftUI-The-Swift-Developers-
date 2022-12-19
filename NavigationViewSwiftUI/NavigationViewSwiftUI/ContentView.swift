//
//  ContentView.swift
//  NavigationViewSwiftUI
//
//  Created by Александр Косяков on 19.12.2022.
//

import SwiftUI

class UserBuy: ObservableObject {
    @Published var caps = 0
}

struct ContentView: View {
    @ObservedObject var userBuy = UserBuy()
    //    @State var selector: String?
    @State var isShow = false
    
    let coffee = "Coffee"
    let tea = "Tea"
    
    var body: some View {
        NavigationView {
            VStack(spacing:30) {
                Text("You have chosen = \(userBuy.caps) units")
                Text("What do you want?")
                
                //                переход между экранами по нажатию на текст №1
                NavigationLink(destination: DetailView(text: coffee), label: {
                    Text(coffee)
                })
                NavigationLink(destination: DetailView(text: tea), label: {
                    Text(tea)
                })
                
                //                 переход между экранами через selector №2
                //                NavigationLink(destination: DetailView(text: coffee), tag:
                //                                "action1", selection: $selector,label: {
                //                                EmptyView()
                //                               })
                
                //                Button("Go") {
                //                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //                        self.isShow = true
                //                    }
                //                }
                
                
                //                переход между экранами с помощью флагов №3
                //                NavigationLink(destination: DetailView(text:coffee),
                //                               isActive: $isShow) {
                //                    EmptyView()
                //                }
                //
         
                //                Button("Go") {
                //                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                //                        self.selector = "action2"
                //                    }
                //                }
                
                
                .navigationTitle("Menu")
            }
        }
        // передача объекта userBuy
        .environmentObject(userBuy)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
