//
//  Color.swift
//  DropDownAnimation
//
//  Created by Anuj Joshi on 26/10/2020.
//

import SwiftUI

extension Color {

    static
    func getBGColor() -> Color {
        return Color(red: 224/255, green: 229/255, blue: 236/255)
    }

    static
    func getLinearGradient() -> LinearGradient {
        let colors = [Color.init(red: 0.40, green: 0.49, blue: 0.92), Color.init(red: 0.46, green: 0.29, blue: 0.64)]
        return LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
    }
}
