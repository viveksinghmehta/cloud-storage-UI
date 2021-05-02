//
//  FavoritesItemView.swift
//  Cloud Storage
//
//  Created by WishACloud on 01/05/21.
//

import SwiftUI

struct FavoritesItemView: View {
    
    let color: Color
    let icon: String
    let folderName: String
    let showAvatar: Bool
    
    var body: some View {
        Group {
            VStack(alignment: .leading) {
                HStack {
                    ZStack {
                        color.opacity(0.3)
                            .frame(width: 40, height: 40, alignment: .center)
                            .clipShape(Circle())
                        Image(systemName: icon)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(color)
                            .frame(width: 20, height: 20)
                    }
                    .shadow(color: color.opacity(0.8), radius: 10, x: 5, y: 5)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .rotationEffect(.init(degrees: 90))
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 8)
                
                Spacer()
                if showAvatar {
                    ZStack {
                        Image("avatar1")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 30, height: 30)
                            .overlay(Circle().stroke(color, lineWidth: 2))
                        Image("avatar2")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 30, height: 30)
                            .overlay(Circle().stroke(color, lineWidth: 2))
                            .offset(x: 20.0, y: 0)
                        Image("avatar3")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 30, height: 30)
                            .overlay(Circle().stroke(color, lineWidth: 2))
                            .offset(x: 40.0, y: 0)
                    }
                    .padding(.horizontal, 10)
                }
                
                    Text(folderName)
                        .foregroundColor(color)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 10)
                    Text("30 files")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 10)
                        .padding(.bottom, 10)
            }
            
        }
        .frame(width: 150, height: 180, alignment: .center)
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct FavoritesItemView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesItemView(color: Color.blue, icon: "arkit", folderName: "Inbox", showAvatar: true)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
