//
//  ContentView.swift
//  HukingAppPopulatingListInSwiftUI
//
//  Created by ramil on 01.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    let hikes = Hike.all()
    
    var body: some View {
        
        List(self.hikes, id: \.name) { hike in
            HikeCell(hike: hike)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(hike.name)
                    .font(.largeTitle)
                    .padding()
                Text(String(format: "%.2f", hike.miles))
            }
        }
    }
}
