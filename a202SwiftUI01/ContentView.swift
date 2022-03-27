//
//  ContentView.swift
//  a202SwiftUI01
//
//  Created by 申潤五 on 2022/3/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var r:Double = 0.5
    @State var g:Double = 0.5
    @State var b:Double = 0.5
    
    var body: some View {
        ZStack{
            Color(red: r, green: g, blue: b)
            ctrl
        }
    }
    
    var ctrl:some View{
        VStack{
            HStack{
                Text("R:\(Int(r*255))").font(.largeTitle)
                Text("G:\(Int(g*255))").font(.largeTitle)
                Text("B:\(Int(b*255))").font(.largeTitle)
            }
            Spacer()
            VStack{
                Slider(value: $r)
                Slider(value: $g)
                Slider(value: $b)
            }.padding(.all,30)
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
