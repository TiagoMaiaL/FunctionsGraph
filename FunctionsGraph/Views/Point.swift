//
//  Point.swift
//  FunctionsGraph
//
//  Created by Tiago Maia Lopes on 07/06/20.
//  Copyright © 2020 Tiago Maia Lopes. All rights reserved.
//

import SwiftUI

/// A single geometrical point view.
struct Point: View {
    var body: some View {
        Path { path in
            path.addRect(
                CGRect(x: 0, y: 0, width: 10, height: 10)
            )
        }
        .fill()
        .foregroundColor(.red)
        .frame(width: 10, height: 10, alignment: .center)
        .cornerRadius(5)
    }
}

struct Point_Previews: PreviewProvider {
    static var previews: some View {
        Point()
    }
}
