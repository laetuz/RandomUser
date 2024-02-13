//
//  ContentView.swift
//  RandomUser
//
//  Created by Ryo Martin on 04/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://i0.wp.com/www.sciencenews.org/wp-content/uploads/2023/06/062623_CG_Megalodon_feat.jpg"), scale: 2) { image in
                image.resizable().scaledToFill()
            } placeholder: {
                ProgressView()
            }
                .frame(
                width: 200,
                height: 100
                )
                .background(Color.blue)
            Spacer(minLength: 20)
            UsersView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
