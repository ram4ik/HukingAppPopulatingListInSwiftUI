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
            Text(hike.name)
                .font(.largeTitle)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
