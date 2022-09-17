//
//  aplhabetButton.swift
//  CDU_ACARS_FMC
//
//  Created by kushagra Ahuja on 9/10/22.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .overlay(
        RoundedRectangle(cornerRadius: 12)
          .fill(LinearGradient(gradient: Gradient(stops: [.init(color: Color(red: 0.12, green: 0.12, blue: 0.11), location: 0.00), .init(color: Color(red: 0.21, green: 0.20, blue: 0.20), location: 1.00)]), startPoint: .topLeading, endPoint: .bottomTrailing))
          .frame(width: 93.00, height: 60.00)
          .shadow(color: Color(red: 0.44, green: 0.34, blue: 0.22, opacity: 0.60), radius: 20.399999618530273, x: 4.630702972412109, y: 9.088266372680664))
    }

}



