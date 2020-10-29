//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by しゅん on 2020/08/11.
//  Copyright © 2020 Shun Gondo. All rights reserved.
//

import SwiftUI

struct ItemView:View,Identifiable {
    var id = UUID()
    let msg:String
    let c:Color
    
    var body:some View {
        Text(msg).foregroundColor(c)
    }
}

struct ContentView: View {
    
    let data = [
        ItemView(msg: "Red", c: Color.red),
        ItemView(msg: "Green", c: Color.green),
        ItemView(msg: "Blue", c: Color.blue),
        ItemView(msg: "Yellow", c: Color.yellow)
    ]
    @State var msg = ""
    
    var body: some View {
        VStack {
            Text("ItemView List.")
                .font(.largeTitle)
            
            Form {
                Section() {
                    List(data) { item in
                        item
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
