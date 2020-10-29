//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by しゅん on 2020/08/11.
//  Copyright © 2020 Shun Gondo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let data = ["One", "Two", "Three", "Four", "Five"]
    @State var msg = ""
    
    var body: some View {
        VStack {
            Text("ItemView List.")
                .font(.largeTitle)
            
            Form {
                Section(header: Text("Account").font(.headline)) {
                    List(data, id:\.self) { item in
                        Text(item)
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
