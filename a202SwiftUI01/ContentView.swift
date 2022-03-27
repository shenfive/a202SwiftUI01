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
                Mytext(title: "R", value: r)
                Mytext(title: "G", value: g)
                Mytext(title: "B", value: b)

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

struct Mytext:View{
    var title:String
    var value:Double
    var body: some View{
        Text(String(format: "%@:%03.0f", title,value*255))
            .font(.largeTitle)
            .frame(width: 100, height: 40, alignment: .leading)
        
    }
    
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
