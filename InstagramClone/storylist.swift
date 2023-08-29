//
//  storylist.swift
//  InstagramClone
//
//  Created by Apple on 29/08/2023.
//

import SwiftUI

struct storylist: View {
    static let imageNames = [
        Asset.avatar0.name,
        Asset.avatar1.name,
        Asset.avatar2.name,
        Asset.avatar3.name,
        Asset.avatar0.name,
        Asset.avatar1.name,
        Asset.avatar2.name,
        Asset.avatar3.name
        
    ]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack{
                ForEach(Array(storylist.imageNames.enumerated()), id: \.offset){
                    index, name in
                    VStack(spacing:0){
                    Stories(imageName: name)
                        Text(name)
                            .font(.system(size: 12))
                    }
                }
            
            }.padding(.vertical)
        }
}
}

struct storylist_Previews: PreviewProvider {
    static var previews: some View {
        storylist()
    }
}
