//
//  FileListItem.swift
//  Cloud Storage
//
//  Created by WishACloud on 01/05/21.
//

import SwiftUI

struct FileListItem: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("1 file uploaded")
                        .font(.system(.body, design: .rounded)).bold()
                        .foregroundColor(Color("textColor"))
                    Text("Cloud > Documents")
                        .font(.system(.footnote, design: .rounded)).bold()
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .rotationEffect(.init(degrees: 90))
                    .foregroundColor(.secondary)
            }
            HStack {
                ZStack {
                    Color.blue.opacity(0.3)
                        .frame(width: 40, height: 40, alignment: .center)
                        .clipShape(Circle())
                    Image(systemName: "w.square.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.blue)
                        .frame(width: 20, height: 20)
                }
                VStack(alignment: .leading, spacing: 5) {
                   Text("Monthly report. April 2021")
                        .foregroundColor(.black)
                        .font(.system(.title3, design: .rounded)).bold()
                    Text("doc, 338 KB")
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct FileListItem_Previews: PreviewProvider {
    static var previews: some View {
        FileListItem()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
