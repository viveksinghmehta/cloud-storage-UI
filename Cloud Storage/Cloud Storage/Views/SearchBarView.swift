//
//  SearchBarView.swift
//  Cloud Storage
//
//  Created by WishACloud on 01/05/21.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
            TextField("Search", text: $searchText)
                .padding()
            Image(systemName: "magnifyingglass")
                .imageScale(.large)
                .foregroundColor(.secondary)
                .padding()
        }
        .background(Color(UIColor(red: 236/255, green: 238/255, blue: 247/255, alpha: 1.0)))
        .frame(height: 40, alignment: .center)
        .cornerRadius(20)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
