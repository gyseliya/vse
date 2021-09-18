//
//  ContentView.swift
//  AnimationsForCourses
//
//  Created by WSR on 13.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var animation = false
    var body: some View {
        Button(action: {
            self.animation.toggle()
        }, label: {
            Text("Your first animation!")
        })
//        эффект масшатба
        .scaleEffect(animation ? 2:1,anchor: .center)
 
        //        линейная анимация
//        .animation(Animation.linear, value: animation)
        
//        анимация с определенной продолжительностью (в данном случае анимация будет выполнятся за 3 секунды)
 //       .animation(Animation.linear(duration: 8), value: animation)
        
//        анимация с задержкой(в данном случае анимация будет выполнятся спустя 2 секунды после изменения значения переменной animation)
 //       .animation(Animation.linear.delay(2), value: animation)
        
//        анимация, которая повторяется вечно
//        .animation(Animation.linear.repeatForever(), value: animation)
        
//         анимация, которая повторяется вечно без автореверса
//        .animation(Animation.linear.repeatForever(autoreverses: false), value: animation)
        
//        пружинная анимация
//        .animation(Animation.spring(), value: animation)
        
//        пружинная анимация с указанной жесткостью и велечиной         сопротивления
        .animation(Animation.spring(response: 1, dampingFraction: 0.1), value: animation)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
