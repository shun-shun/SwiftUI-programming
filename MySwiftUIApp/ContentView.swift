//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by しゅん on 2020/08/11.
//  Copyright © 2020 Shun Gondo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
    @State var flg = true
    
    var body: some View {
        VStack {
            Text("value: \(flg ? "ON": "OFF")")
                .font(.largeTitle)
                .foregroundColor(flg ? Color.black : Color.gray)
            Divider()
            
            Toggle(isOn: $flg, label: {
                Text("Toggle")
                    .font(.headline)
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
