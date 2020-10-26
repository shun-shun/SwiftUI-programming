//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by しゅん on 2020/08/11.
//  Copyright © 2020 Shun Gondo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var data:[String] = [
        "One", "Two", "Three", "Four", "Five",
        "Six", "Seven", "Eight", "Nine", "Ten"
    ]
    @State var val:Int = 0
    
    var body: some View {
        VStack {
            Text("selected: '\(data[self.val])'.")
                .font(.largeTitle)
            
            Divider()
            
            Picker("data", selection: $val,
                    content: {
                ForEach(0 ..< data.count) { n in
                     Text(self.data[n])
                }
            })

            Divider()
            
            Spacer(minLength: 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
