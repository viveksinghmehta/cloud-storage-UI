//
//  StorageView.swift
//  Cloud Storage
//
//  Created by WishACloud on 01/05/21.
//

import SwiftUI

struct StorageView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                    Color(UIColor(red: 249/255, green: 250/255, blue: 255/255, alpha: 1.0))
                    VStack {
                        Spacer().frame(height: 64)
                        Group {
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Image(systemName: "arrow.left")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30)
                                        .foregroundColor(Color("textColor"))
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 22)
                                        .rotationEffect(.init(degrees: 90))
                                        .foregroundColor(Color("textColor"))
                                }
                                .padding(.horizontal, 20)
                                
                                Spacer().frame(height: 5)
                                Text("Storage")
                                    .font(.system(.largeTitle, design: .rounded))
                                    .bold()
                                    .foregroundColor(Color("textColor"))
                                    .padding(.horizontal, 20)
                            }
                        }
                        ScrollView(.vertical, showsIndicators: false) {
                            StorageStatView()
                                .frame(height: 400)
                                .shadow(color: Color.black.opacity(0.2), radius: 10)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 20)
                            FileStorageView(defaultColor: Color.orange, icon: "photo.on.rectangle.angled", fileName: "Images", fileSize: "257.2 GB", filesNo: "12,847 files")
                                .padding(.horizontal, 20)
                            
                            FileStorageView(defaultColor: Color.red, icon: "doc.richtext", fileName: "Documents", fileSize: "243.2 GB", filesNo: "232,432 files")
                                .padding(.horizontal, 20)
                            
                            FileStorageView(defaultColor: Color.green, icon: "music.note.list", fileName: "Media", fileSize: "85 GB", filesNo: "12,564 files")
                                .padding(.horizontal, 20)
                            ZStack {
                                Rectangle().fill(Color.purple)
                                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.09)
                                    .cornerRadius(15)
                                    .shadow(color: Color.purple.opacity(0.8), radius: 10)
                                VStack(alignment: .center, spacing: 5) {
                                    Text("Upgrade your plan")
                                        .font(.system(.title3, design: .rounded))
                                        .bold()
                                        .foregroundColor(.white)
                                    Text("Additional 2 TB")
                                        .font(.system(.footnote, design: .rounded))
                                        .bold()
                                        .foregroundColor(Color.white.opacity(0.8))
                                }
                            }
                            .padding()
                        }
                    }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
    }
}

struct StorageView_Previews: PreviewProvider {
    static var previews: some View {
        StorageView()
    }
}
