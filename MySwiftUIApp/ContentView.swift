//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by しゅん on 2020/08/11.
//  Copyright © 2020 Shun Gondo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
    @State var val = 0.0
    @State var flg = false
    
    var body: some View {
        VStack {
            Text("value: \(Int(val))")
                .font(.largeTitle)
                .foregroundColor(flg ? Color.red : Color.black)
            
            Divider()
            
            Slider(value: $val, in:0...100, step:5,
                   onEditingChanged: {f in
                    self.flg = f
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
