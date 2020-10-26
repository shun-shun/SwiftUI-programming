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
    
    var body: some View {
        VStack {
            Text("value: \(val)")
                .font(.largeTitle)
                .foregroundColor(Color(red:val, green:1.0 - val, blue:1.0 - val))
            
            Divider()
            
            Stepper("Stepp",
            onIncrement:{
                self.val += 0.05
                if self.val > 1.0 {
                    self.val = 1.0
                }
            },
            onDecrement: {
                self.val -= 0.05
                if self.val < 0 {
                    self.val = 0.0
                }
            })
            .padding(20)
            
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
