//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by しゅん on 2020/08/11.
//  Copyright © 2020 Shun Gondo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var pass = ""
    
    var body: some View {
        Form {
            Text("name:\(self.name)\n (pass:\(self.pass))").font(.title)
            
            TextField("Name", text: $name)
            
            SecureField("Password", text: $pass)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
