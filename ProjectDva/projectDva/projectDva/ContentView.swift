//
//  ContentView.swift
//  projectDva
//
//  Created by user on 16.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(){
            Color("gs")
            VStack(){
                Text("Hello!")
                    .foregroundColor(.white)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 50))
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Как дела?")
                                  })
                .font(.system(size: 20, weight: .black, design: .monospaced))
                .frame(width: 200, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color("gs2"))
                
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Хорошего дня!   ;-)")
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                        
                })
                
                
                Spacer()
                
                
            }
            
        }
        //.frame(width: UIScreen.main.bounds.width, alignment: .trailing)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
