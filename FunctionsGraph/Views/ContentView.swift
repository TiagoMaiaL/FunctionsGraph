//
//  ContentView.swift
//  FunctionsGraph
//
//  Created by Tiago Maia Lopes on 07/06/20.
//  Copyright © 2020 Tiago Maia Lopes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            CartesianPlane()
            Group {
                Point()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
