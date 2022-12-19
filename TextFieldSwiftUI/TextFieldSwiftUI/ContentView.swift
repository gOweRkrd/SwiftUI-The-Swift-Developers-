//
//  ContentView.swift
//  TextFieldSwiftUI
//
//  Created by Александр Косяков on 19.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    // скрытие клавиатуры выше 15 ОС
    @FocusState var nameIsFocused: Bool
    
    var body: some View {
        
        TextField("Enter login", text: $text)
            .redTextField()
            .focused($nameIsFocused)
        
        TextField("Enter password", text: $text) {
            changed in
            print(changed)
        } onCommit: {
            print("onCommit")
        }
        .redTextField()
        
        Button {
            nameIsFocused = false
//            hideKeyboard()
            
        } label: {
            Text("Login")
        }
    }
}

extension View {
    // метод скрытия клавиатуру ниже 15 ОС
    func hideKeyboard() {
        UIApplication.shared
            .sendAction(#selector(UIResponder
                .resignFirstResponder), to: nil, from: nil,
                        for: nil)
    }
}

extension View {
    func redTextField() -> some View {
        modifier(TextFieldModifire())
    }
}

struct TextFieldModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
        
            .textFieldStyle(.roundedBorder)
            .foregroundColor(.accentColor)
            .font(.system(size: 24))
            .keyboardType(.emailAddress)
            .padding(.horizontal,14)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.red)
            )
            .padding(.horizontal,14)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

