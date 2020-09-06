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
        
    @State var msg:String = "Start!"
    @State var c:Color = Color.white
    
    var body: some View {
        VStack {
            Text(self.msg)
                .font(.largeTitle)
                .frame(width: UIScreen.main.bounds.size.width, height: 70)
                .background(self.c)
                .onTapGesture(count: 2) {
                    self.msg = "Double Tap!"
                    self.c = Color.yellow
                }
            
            Spacer(minLength: 20).fixedSize()
            
            Text("clear")
                .font(.title)
                .foregroundColor(Color.blue)
                .onTapGesture {
                    self.msg = "Start"
                    self.c = Color.white
            }
            
            Spacer(minLength: 0)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
