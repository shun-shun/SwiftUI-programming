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
        
    @State var msg:String = "your name:"
    @State var input:String = ""
    
    var body: some View {
        VStack {
            Text(self.msg)
                .font(.largeTitle)
            
            Spacer(minLength: 20).fixedSize()
            
            TextField("", text: $input)
                .font(.headline)
                .padding(10)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer(minLength: 10)
            
            Button(action:{
                self.msg = "Hello, \(self.input)!!"
            }, label: {
                Text("button")
                    .font(.title)
            })
            
            Spacer(minLength: 0)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
