//
//  MentalistDetailView.swift
//  Mentalist
//
//  Created by Terese Martyn on 9/4/22.
//

import SwiftUI

struct MentalistDetailView: View {
    var mentalist: Mentalist
    
    var body: some View {
        
        ScrollView{
            VStack(alignment: .center){
                Image(mentalist.image2)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300, alignment: .center)
                Text("\(mentalist.name)")
                    .font(.title)
                    .padding([.bottom, .top], 5)
                
                VStack(alignment: .leading){
                   
                    ForEach(mentalist.quotes, id:\.self) {item in
                    Text("• " + item)
                            .font(.title2)
                            .padding()
                    }
                }.padding([.horizontal, .vertical])
            }
        }
    }
    
struct MentalistDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let model = MentalistModel()
        
        MentalistDetailView(mentalist: model.quotes[0])
    }
}

    }
