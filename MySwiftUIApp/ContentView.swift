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
    @State var pass2 = ""
    
    var body: some View {
        VStack {
            Text("name:\(self.name)\n \(self.pass == self.pass2 ? "password is OK!" : "password mismatch.")")
                .font(.title)
            
            Form {
                Section(header: Text("Account").font(.headline)) {
                    TextField("Name", text: $name)
                    
                    SecureField("Password", text: $pass)
                }
                
                Section(header: Text("Account").font(.headline)) {
                    SecureField("Password", text: $pass2)
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
