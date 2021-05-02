//
//  FileStorageView.swift
//  Cloud Storage
//
//  Created by WishACloud on 01/05/21.
//

import SwiftUI

struct FileStorageView: View {
    
    let defaultColor: Color
    let icon: String
    let fileName: String
    let fileSize: String
    let filesNo: String
    
    var body: some View {
        HStack {
            ZStack {
                defaultColor.opacity(0.3)
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipShape(Circle())
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(defaultColor)
                    .frame(width: 25, height: 25)
            }
            .shadow(color: Color.orange.opacity(0.8), radius: 10, x: 5, y: 5)
            VStack(alignment: .leading) {
                Text(fileName)
                    .font(.system(.title3, design: .rounded))
                    .bold()
                HStack {
                    Text(fileSize)
                        .font(.system(.footnote, design: .rounded))
                        .bold()
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(filesNo)
                        .font(.system(.footnote, design: .rounded))
                        .bold()
                        .foregroundColor(.secondary)
                }
                ZStack(alignment: .leading) {
                    Rectangle().fill(Color("lightGrey"))
                        .frame(height: 2)
                        .cornerRadius(1)
                        
                    Rectangle().fill(defaultColor)
                        .frame(width: 100, height: 4)
                        .cornerRadius(2)
                }
            }
        }
    }
}

struct FileStorageView_Previews: PreviewProvider {
    static var previews: some View {
        FileStorageView(defaultColor: Color.orange, icon: "photo.on.rectangle.angled", fileName: "Images", fileSize: "257.2 GB", filesNo: "12,847 files")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
