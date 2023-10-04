//
//  primaryBtn.swift
//  bookApp
//
//  Created by Andreas Antonsson on 2023-10-04.
//

import SwiftUI

struct primaryBtn: View {
    
    var height: CGFloat = 42
    var width: CGFloat = 150
    var fontSize: CGFloat = CGFloat(FontSizes().medium)
    var title: String
    var onPress: () -> Void
    @State private var isPressed = false
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: width, height: height).cornerRadius(CGFloat(Spacing().medium))
            .overlay(
                RoundedRectangle(cornerRadius: CGFloat(Spacing().medium))
                .stroke(Color.black, lineWidth: 2)
                .background(
                    Button(action: {
                        self.onPress()
                        }) {
                        Text(title)
                        .foregroundColor(.white)
                        .font(.system(size: fontSize).bold())
                        }
            )
        )
    }
}
    struct primaryBtn_Previews: PreviewProvider {
        static var previews: some View {
            primaryBtn(title: "my label", onPress: {print("")})
        }
    }

