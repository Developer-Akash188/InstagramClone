//
//  FeedItem.swift
//  InstagramClone
//
//  Created by Apple on 29/08/2023.
//

import SwiftUI

struct FeedItem: View {
     let captionButtons=[
        Asset.heart.name,
        Asset.comment.name,
        Asset.share.name,
        Asset.bookmark.name]
    var body: some View {
        VStack{
            HStack{
                Image(Asset.friend.name)
                Button(action: {}) {
                    Text("akash188")
                        .bold()
                
                }.foregroundColor(.black)
                Spacer()
            }.padding(.horizontal,4)
        Image(Asset.feedImage.name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            VStack(alignment:.leading)
            {
                HStack{
                    ForEach(captionButtons, id:\.self)
                    {
                        button in
                        Button(action:{},label:{
                            Image(button)
                        })
                        if button == Asset.share.name{
                        Spacer()
                        }
                        
                    }
                }
                Button(action:{}){
                    Text("100 likes")
                        .foregroundColor(.black)
                }
                HStack{
                Button(action:{}){
                    Text("Akash")
                        .bold()
                        .foregroundColor(.black)
                }
                    Text("Hello. Whats going on buddy?")
                }
                HStack{
                    Image(Asset.friend.name)
                    TextField("Add comment...",text:.constant(""))
                    Button(action: {}) {
                        Image(Asset.plus.name)
                    
                    }
                }
                Text("10 mintues ago")
                    .font(.caption)
                    .foregroundColor(Color(.systemGray3))
                    
            }
            Spacer()
        }.padding(.horizontal,4)
      
        
    }
}

struct FeedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeedItem()
    }
}
