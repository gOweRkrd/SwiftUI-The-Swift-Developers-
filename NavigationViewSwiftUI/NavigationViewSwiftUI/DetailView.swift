//
//  DetailView.swift
//  NavigationViewSwiftUI
//
//  Created by Александр Косяков on 19.12.2022.
//

import SwiftUI

struct DetailView: View {
    @Environment (\.presentationMode)var presentation
    @EnvironmentObject var userBuy: UserBuy
    var text: String
    
    var body: some View {
        VStack (spacing: 30) {
            Text("Buy \(text) \(userBuy.caps) units")
            
                .navigationBarItems(leading:
                                        Button("Back in menu") {
                    self.presentation.wrappedValue.dismiss()
                }
                                    , trailing:
                                        
                                        HStack {
                    Button ("-") {
                        // метод предотвращающий уход в минус при выборе чашек
                        guard self.userBuy.caps > 0 else { return }
                        self.userBuy.caps -= 1
                    }
                    Button ("+") {
                        self.userBuy.caps += 1
                    }
                }
            )}
        // убираем кнопку menu
    .navigationBarBackButtonHidden(true)
        
        // обнуление счетчика при переключении между продуктами
    .onAppear() {
        self.userBuy.caps = 0
    }
        
        }
    }
                                    
