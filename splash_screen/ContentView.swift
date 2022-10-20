//
//  ContentView.swift
//  splash_screen
//
//  Created by Hande Sağlam on 20.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive=false;
    @State private var size=0.8;
    
    @State private var opacity=0.8;
    var body: some View {
        VStack {
            Image(systemName: "hare.fill")
                .font(.system(size: 80))
                .imageScale(.large)
                .foregroundColor(.accentColor)
          
        }
        .padding()
        .onAppear{
            withAnimation(.easeIn(duration: 1.2)){
                self.size=0.9;
                self.opacity=1.0;
            }
        }
        .onAppear{
            
            DispatchQueue.main.asyncAfter(deadline: .now()+2.0){
                self.isActive=true
            }
        }
    }
    
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
