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
            .font(.title)
            .frame(width: UIScreen.main.bounds.size.width, height: 70)
            .background(self.c)
            .onLongPressGesture(minimumDuration: 1.0,  pressing: { f in
                if f {
                    self.msg = "tap..."
                    self.c = Color.yellow
                } else {
                    self.c = Color.red
                }
            }){
                self.msg = "log tapped!"
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
