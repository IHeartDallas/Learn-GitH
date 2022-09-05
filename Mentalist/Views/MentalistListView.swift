//
//  ContentView.swift
//  Mentalist
//
//  Created by Terese Martyn on 9/3/22.
//

import SwiftUI

struct MentalistListView: View {
   @ObservedObject var model = MentalistModel()
    
 
    var body: some View {
        
    NavigationView{
        List(model.quotes) {r in
            NavigationLink(destination: MentalistDetailView(mentalist:r), label: {
            VStack{
                Image(r.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300, alignment: .center)
                    .clipped()
                    .cornerRadius(10)
                Text(r.majorQuote)
                    .font(.title2)
                    .background(Color.blue)
                    .frame(width: 300,height: 80, alignment: .center )
                
                    }
                })
            }.navigationBarTitle("Mentalist Quotes")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MentalistListView()
    }
}
