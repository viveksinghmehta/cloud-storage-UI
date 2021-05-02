//
//  ContentView.swift
//  Cloud Storage
//
//  Created by WishACloud on 01/05/21.
//

import SwiftUI

struct Favorite: Identifiable {
    let id = UUID()
    let color: Color
    let icon: String
    let name: String
    let bool: Bool
}

struct MainView: View {
    
    let favorites: [Favorite] = [
        Favorite(color: .blue, icon: "folder.fill.badge.plus", name: "Personal", bool: false),
        Favorite(color: .red, icon: "envelope.open.fill", name: "Inbox", bool: true),
        Favorite(color: .green, icon: "hammer.fill", name: "Tools", bool: false),
        Favorite(color: .orange, icon: "hare.fill", name: "Animals", bool: true),
        Favorite(color: .yellow, icon: "arkit", name: "AR", bool: true)
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor(red: 249/255, green: 250/255, blue: 255/255, alpha: 1.0))
                VStack(alignment: .leading) {
                    Spacer()
                        .frame(height: 40)
                    Group {
                        HStack() {
                            Image(systemName: "text.alignleft")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30, alignment: .center)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Image("avatar")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                            }
                            .frame(width: 60, height: 60)
                        }
                        .padding(.horizontal, 20)
                    } // avatar and menu button
                    
                    Group {
                            Text("Files")
                                .font(.system(.largeTitle, design: .rounded))
                                .bold()
                                .foregroundColor(Color("textColor"))
                                .padding(.horizontal, 10)
                    } // Files
                    
                    Group {
                        SearchBarView()
                            .padding(.horizontal, 10)
                    }
                    .padding(.vertical, 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        Group {
                            HStack {
                                Text("Favorites")
                                    .font(.system(.largeTitle, design: .rounded))
                                    .bold()
                                    .foregroundColor(Color("textColor"))
                                    .padding(.leading, 10)
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing : 10) {
                                    ForEach(0..<favorites.count) { item in
                                        NavigationLink(destination: StorageView()) {
                                        FavoritesItemView(color: favorites[item].color, icon: favorites[item].icon, folderName: favorites[item].name, showAvatar: favorites[item].bool)
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal, 20)
                        }
                        
                        Group {
                            VStack(spacing: 10) {
                                HStack {
                                    Text("Recent uploads")
                                        .font(.system(.title, design: .rounded))
                                        .bold()
                                        .foregroundColor(Color("textColor"))
                                        .padding(.horizontal, 10)
                                    Spacer()
                                }
                                HStack {
                                    Text("November, 11")
                                        .font(.system(.title3, design: .rounded))
                                        .bold()
                                        .foregroundColor(.secondary)
                                        .padding(.horizontal, 10)
                                    Spacer()
                                }
                                ForEach(0..<5) { item in
                                    NavigationLink(destination: StorageView()) {
                                        PhotosListItem()
                                            .padding(.all, 10)
                                    }
                                    NavigationLink(destination: StorageView()) {
                                        FileListItem()
                                            .padding(.all, 10)
                                    }
                                }
                            }
                            .padding(.vertical, 20)
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                Button(action: {}) {
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20, alignment: .center)
                    .foregroundColor(.white)
            }
                .frame(width: 50, height: 50)
                .background(Color("purple"))
                .clipShape(Circle())
                .shadow(color: Color("purple"), radius: 10, x: -5, y: 5)
                .padding()
            , alignment: .bottomTrailing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
