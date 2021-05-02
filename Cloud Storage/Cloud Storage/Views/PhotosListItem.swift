//
//  PhotosListItem.swift
//  Cloud Storage
//
//  Created by WishACloud on 01/05/21.
//

import SwiftUI

struct PhotosListItem: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack {
                VStack(alignment: .leading) {
                    Text("2 photo uploaded")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color("textColor"))
                    Spacer()
                        .frame(height: 5)
                    Text("Cloud > Photos > Nature")
                        .font(.system(.footnote, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.secondary)
                }
                .padding(.leading, 5)
                Spacer()
                ZStack {
                    Image("avatar1")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                        .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                    Image("avatar2")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                        .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                        .offset(x: -25.0, y: 0)
                    Image("avatar3")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                        .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                        .offset(x: -55.0, y: 0)
                }
                .padding(.trailing, 5)
            }
            HStack(spacing: 5) {
                Image("1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 100)
                    .cornerRadius(10)
                Image("2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 100)
                    .cornerRadius(10)
                
            }
        }
        .padding(.all, 10)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct PhotosListItem_Previews: PreviewProvider {
    static var previews: some View {
        PhotosListItem()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
