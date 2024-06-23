//
//  DetailView2PassingBindingVar.swift
//  Example-DismissModalView-SwiftUI-iOS17
//
//  Created by Mayur Vaity on 23/06/24.
//

import SwiftUI

struct DetailView2PassingBindingVar: View {
    
    //state of the binding variable is stored in below var
    //and as it is binding, any changes will be returend back to main view
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        Text("This is a modal view. Below dismiss button dimisses Modal View using passed Binding Bool variable.")
            .padding()
            .multilineTextAlignment(.center)
        
        //dismiss button 
        Button {
            //altering the binding variable to dismiss this Modal
            isShowingDetailView = false
        } label: {
            Text("Dismiss old way")
        }
        .buttonStyle(.borderedProminent)
        .padding()
    }
}

#Preview {
    DetailView2PassingBindingVar(isShowingDetailView: .constant(true))
}
