//
//  ContentView.swift
//  TextViewSwiftUI
//
//  Created by Александр Косяков on 19.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text("Beauty and wisdom are seldom found together"
        .uppercased())
//        .font(.title)
        // пробелы между буквами
//        .kerning(2)
        .italic()
        .bold()
        .underline(true,color: .yellow)
        // отступ
        .padding()
        // выравнивание текста в одну линию
//        .lineLimit(nil)
//        .multilineTextAlignment(.center)
        .background(.red)
//        .lineSpacing(10)
//        .foregroundColor(.white)
        .font(.system(size: 24, weight: .bold, design: .serif))
//        .frame(width: 200, height: 100, alignment: .trailing)
        // расширения лейбла под размер текстат
        .minimumScaleFactor(0.1)
        
//        HStack(alignment: .top) {
//            Text("Hello")
//                .baselineOffset(-10)
//                .border(Color.red)
//            Text("Hello")
//                .border(Color.green)
//            Text("Hello")
//                .baselineOffset(10)
//                .border(Color.blue)
//        }
//        .background(Color(white: 0.9))
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
