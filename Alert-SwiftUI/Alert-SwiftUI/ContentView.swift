//
//  ContentView.swift
//  Alert-SwiftUI
//
//  Created by Александр Косяков on 16.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isError = false
    
    var body: some View {
        //        showAlert()
        showActionSheet()
    }
    
    fileprivate func showAlert() -> some View {
        Button(action: {
            self.isError = true
        },label: {
            Text("Вход в AlertContoler")
        }).alert(isPresented: $isError,
                 content: {
            Alert(title: Text("Загрузка"),
                  message: Text("Вы уверены?"),
                  primaryButton: .destructive(Text("Да"),
                                              action: {
                print("test")
            }),secondaryButton: .cancel())
        })
    }
    
    fileprivate func showActionSheet() -> some View {
        Button(action: {
            self.isError = true
        },label: {
            Text("Вход в ActionSheet")
        }).actionSheet(isPresented: $isError, content: {
            ActionSheet(title: Text ("Загрузка"),
                        message: Text("Вы хотите загрузить фото?"),
                        buttons: [.destructive(Text("Загрузить"),
                                               action:  {
                print("пошла загрузка")
                
            }), .cancel()])
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

