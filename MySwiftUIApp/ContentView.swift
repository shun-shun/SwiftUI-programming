//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by しゅん on 2020/08/11.
//  Copyright © 2020 Shun Gondo. All rights reserved.
//

import SwiftUI

struct MyData:Identifiable {
    var id = UUID()
    
    var msg:String
    var c:Color
}

struct ContentView: View {
        
    @State var msg:String = "Click"
    @State var cont:Int = 0
    
    var body: some View {
        VStack {
            Text(self.msg)
                .font(.largeTitle)
            
            Spacer(minLength: 20).fixedSize()
            
            Button(action:{
                self.cont += 1
                self.msg = "Count: \(self.cont)"
            }, label:{
                Text("Button")
                    .font(.title)
                .frame(width: 200, height: 50)
                    .border(Color.blue)
            })
            
            Spacer(minLength: 10)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
