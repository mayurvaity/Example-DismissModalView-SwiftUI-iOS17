//
//  DemoModalView.swift
//  Example-DismissModalView-SwiftUI-iOS17
//
//  Created by Mayur Vaity on 23/06/24.
//

import SwiftUI

struct DetailView1Env: View {
    
    //@Environment var created to access environment properties of the view, then dismiss method used to dismiss the view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("This is modal view. Below dismiss button dimisses Modal View using @Environment dismiss.")
            .padding()
            .multilineTextAlignment(.center)
        
        //dismiss button
        Button {
            //calling dismiss method obtained from Environment var, to dismiss this var 
            dismiss()
        } label: {
            Text("Dismiss")
        }
        .buttonStyle(.borderedProminent)
        .padding()
        
    }
}

#Preview {
    DetailView1Env()
}
