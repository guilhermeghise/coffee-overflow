//
//  GameView.swift
//  BaseCoffeOverflow
//
//  Created by Eduardo Ferrari on 12/03/26.
//

import SwiftUI
import SpriteKit

struct GameView: View {
    
    @State private var viewModel = GameViewModel()
    
    var body: some View {
        SpriteView(scene: viewModel.scene)
            .ignoresSafeArea()
    }
}
