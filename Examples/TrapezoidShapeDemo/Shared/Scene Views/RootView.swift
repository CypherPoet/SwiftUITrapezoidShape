//
// RootView.swift
// TrapezoidShapeDemo
//
// Created by CypherPoet on 3/23/21.
// ✌️
//

import SwiftUI


struct RootView {
}


// MARK: - `View` Body
extension RootView: View {

    var body: some View {
        NavigationView {
            WelcomeSceneViewer()
        }
        .accentColor(ThemeColors.accent)
    }
}


// MARK: - Computeds
extension RootView {
}


// MARK: - View Content Builders
private extension RootView {
}


// MARK: - Private Helpers
private extension RootView {
}


#if DEBUG
// MARK: - Preview
struct RootView_Previews: PreviewProvider {

    static var previews: some View {
        RootView()
    }
}
#endif
