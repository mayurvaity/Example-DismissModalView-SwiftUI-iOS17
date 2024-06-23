//
//  ContentView.swift
//  Example-DismissModalView-SwiftUI-iOS17
//
//  Created by Mayur Vaity on 23/06/24.
//

import SwiftUI

struct ContentView: View {
    
    //variable for DetailView1Env
    @State var isShowingDetailView = false
    
    //variable for DetailViewEnv2
    @State var isShowingDetailView2 = false
    
    
    var body: some View {
        VStack {
            Text("Press below button to show Modal View")
            
            Button {
                isShowingDetailView.toggle()
            } label: {
                Text("Present Modal View 1")
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            Button {
                isShowingDetailView2.toggle()
            } label: {
                Text("Present Modal View 2")
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
        .padding()
        .sheet(isPresented: $isShowingDetailView,
               content: {
            DetailView1Env()
        })
        .sheet(isPresented: $isShowingDetailView2,
               content: {
            DetailView2PassingBindingVar(isShowingDetailView: $isShowingDetailView2)
        })
    }
}

#Preview {
    ContentView()
}
