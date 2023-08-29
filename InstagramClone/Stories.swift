//
//  Stories.swift
//  InstagramClone
//
//  Created by Apple on 29/08/2023.
//

import SwiftUI

struct Stories: View {
    let imageName: String
    var body: some View {
        Button(action: {}){
            Image(imageName)
                .resizable()
                .frame(width: 64, height: 64)
                .aspectRatio(contentMode: .fill)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white,lineWidth: 10))
                .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing),lineWidth: 3))
                
        }
        
        
        
    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories(imageName: Asset.avatar2.name
        )
    }
}

//Image(Asset.abc.name).clipShape(Circle()) to make image round
