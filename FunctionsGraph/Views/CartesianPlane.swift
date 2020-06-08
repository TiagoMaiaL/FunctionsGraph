//
//  CartesianPlane.swift
//  FunctionsGraph
//
//  Created by Tiago Maia Lopes on 07/06/20.
//  Copyright © 2020 Tiago Maia Lopes. All rights reserved.
//

import SwiftUI

/// A cartesian plane view, displaying mathematical functions.
struct CartesianPlane: View {
    var body: some View {
        ZStack {
            CartesianArea()
            BaseAxisLines()
        }
    }

    /// A view layer with the base horizontal and vertical axis of a cartesian plane.
    struct BaseAxisLines: View {
        var body: some View {
            GeometryReader { reader in
                Path { path in
                    let size = reader.size
                    let xOrigin = size.width / 2
                    let yOrigin = size.height / 2

                    path.addLines([
                        CGPoint(x: xOrigin, y: 0),
                        CGPoint(x: xOrigin, y: size.height)
                    ])

                    path.addLines([
                        CGPoint(x: 0, y: yOrigin),
                        CGPoint(x: size.width, y: yOrigin)
                    ])
                }
                .stroke(lineWidth: 3)
                .foregroundColor(.black)
            }
        }
    }

    /// A view layer with the cartesian plane unit squares.
    struct CartesianArea: View {
        var body: some View {
            GeometryReader { reader in
                Path { path in
                    let size = reader.size
                    let width = size.width
                    let height = size.height

                    let unitLenght: CGFloat = 20

                    var currentX = (width / 2).truncatingRemainder(dividingBy: unitLenght)
                    repeat {
                        path.move(to: CGPoint(x: currentX, y: 0))
                        path.addLine(to: CGPoint(x: currentX, y: height))
                        currentX += unitLenght
                    } while currentX < width

                    var currentY = (height / 2).truncatingRemainder(dividingBy: unitLenght)
                    repeat {
                        path.move(to: CGPoint(x: 0, y: currentY))
                        path.addLine(to: CGPoint(x: width, y: currentY))
                        currentY += unitLenght
                    } while currentY < height
                }
                .stroke(lineWidth: 1)
                .foregroundColor(.gray)
            }
        }
    }
}

struct CartesianPlane_Previews: PreviewProvider {
    static var previews: some View {
        CartesianPlane()
    }
}
