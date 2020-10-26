//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by しゅん on 2020/08/11.
//  Copyright © 2020 Shun Gondo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var msg = "Start!"
    @State var count = 0
    @State var data:[String] = []
    
    var body: some View {
        VStack {
            Text(msg)
                .font(.title)
            
            Divider()
            
            Stepper("Stepp",
            onIncrement:{
                self.count += 1
                self.data.append("No, \(self.count)")
                self.msg = "add 'No, \(self.count)'"
            },
            onDecrement: {
                if self.count > 0 {
                    self.count -= 1
                    let re = self.data.popLast()
                    self.msg = "'\(re ?? "?")' removed."
                }
            })
            .padding(20)
            
            Divider()

            ForEach(data, id: \.self) { item in
                VStack {
                    Text(item).font(.headline).padding(10)
                    Divider()
                }
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
