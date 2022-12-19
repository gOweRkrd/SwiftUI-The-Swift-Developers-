//
//  ContentView.swift
//  TabViewSwiftUI
//
//  Created by Александр Косяков on 19.12.2022.
//

import SwiftUI

struct MainTabView: View {
    
    // переменная для открытия при запуске приложения на нужном экране
    @State var tabSelected = 1

    var body: some View {
        TabView(selection: $tabSelected) {
            HomeView(tabSelection: $tabSelected)
            
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                ZStack {
                    Color.blue.ignoresSafeArea(edges: .top)
                    Text("Another Tab")
                }
                .tabItem {
                    Image(systemName: "globe")
                    Text("Internet")
                }
                .tag(1)
            
            ZStack {
                Color.green.ignoresSafeArea(edges: .top)
                Text("The Last Tab")
            }
                    .tabItem {
                        Image(systemName: "basket.fill")
                        Text("Basket")
                    }
                    .tag(2)
            }
            .font(.headline)
            .accentColor(.red)
            
        }
    
    }

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

struct HomeView: View {
    // метод перехода на другой экран по нажатию
    @Binding var tabSelection: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: .top)
            VStack {
                Text("The First Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    tabSelection = 2
                    
                } label: {
                    Text("Go to basket")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
