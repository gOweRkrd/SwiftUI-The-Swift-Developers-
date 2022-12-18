//
//  ContentView.swift
//  SegmentSwiftUI
//
//  Created by Александр Косяков on 18.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var segmentIndex = 0
    @State var offsetX = 0
    
    var company = ["Nike","Puma","Reebok"]
    var sneakers = ["Nike","Puma","Reebok"]
    var body: some View {
        
        VStack {
            Text("Кросовки - \(company[segmentIndex])")
                .font(Font.system(.title))
            Spacer()
            
            ZStack {
                // рисуем вьюху
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray)
                    .padding()
                    .offset(x:CGFloat(offsetX))
                
                Image(sneakers[segmentIndex])
                //подгоняет под размер картинки
                    .resizable()
                    .frame(width: 350, height: 350)
                    .offset(x:CGFloat(offsetX))
            }.animation(.spring())
            
            Picker(selection: Binding(get: {
                self.segmentIndex
            }, set: { newValue in
                self.segmentIndex = newValue
                self.offsetX = -500
                moveBack()
                print(newValue)
                
            }), label: Text("")) {
                ForEach(0..<company.count) {
                    Text(self.company[$0]).tag($0)
                }
            }.pickerStyle(SegmentedPickerStyle()).padding()
            Spacer().frame(height: 150)
        }
    }
    private func moveBack() {
        DispatchQueue.main.asyncAfter(deadline: .now()
                                      + 0.5) {
            self.offsetX = 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
