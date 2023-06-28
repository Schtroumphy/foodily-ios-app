//
//  SplashView.swift
//  foodily
//
//  Created by JEAN-LOUIS Thessalène on 28/06/2023.
//

import SwiftUI

struct SplashView: View {

    @State var isActive: Bool = false

    var body: some View {
        ZStack {
            if self.isActive {
                HomeView()
            } else {
                Color.white
                    .edgesIgnoringSafeArea(.all)

                Image("openfoodfact_logo")
                    .scaledToFill()
                    .clipShape(Capsule())
                    .frame(width: 100, height: 100)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
