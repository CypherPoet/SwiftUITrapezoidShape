//
// WelcomeSceneViewer.swift
// TrapezoidShapeDemo
//
// Created by CypherPoet on 3/23/21.
// ✌️
//

import SwiftUI
import SwiftUIStarterKit
import SwiftUITrapezoidShape


struct WelcomeSceneViewer {
    @State private var screenHeight = CGFloat(0)
    @State private var headerSlantPercentage = CGFloat(20)
}


// MARK: - `View` Body
extension WelcomeSceneViewer: View {
    
    var body: some View {
        VStack(spacing: 32.0) {
            
            headerSection

            Text("The Trapezoid")
                .font(.largeTitle)
            

            VStack {
                Slider(value: $headerSlantPercentage, in: 0.0...100.0) {
                    Text("Slant Percentage")
                }

                Text("Slant Percentage")
                    .font(.caption)
            }
            .padding(.horizontal)
            
            
            Spacer()
            
            Button("Reset Slant") {
                withAnimation(.easeInOut) {
                    headerSlantPercentage = 20.0
                }
            }
            
            Spacer()
            
            
            bottomComposition
                .frame(minHeight: 100)
        }
        .readingFrameSize { newSize in
            screenHeight = newSize.height
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}


// MARK: - Computeds
extension WelcomeSceneViewer {
}


// MARK: - View Content Builders
private extension WelcomeSceneViewer {
    
    var headerShape: some Shape {
        Trapezoid(
            leadingAnchor: .bottomTrailing,
            leadingLegInsetPercentage: headerSlantPercentage,
            trailingLegInsetPercentage: 0
        )
    }
    
    
    var headerSection: some View {
        ZStack {
            Trapezoid(
                leadingAnchor: .topLeading,
                leadingLegInsetPercentage: 0,
                trailingLegInsetPercentage: 50
            )
            .shadow(radius: 10)
            .frame(height: screenHeight * 0.33)
            
            
            ImageAssets.mountain
                .resizable()
                .scaledToFill()
                .frame(height: screenHeight * 0.33)
                .clipShape(headerShape)
                .shadow(radius: 10)
                .overlay(
                    headerShape
                        .stroke(Color.accentColor, lineWidth: 4)
                )
        }
    }
    
    var bottomComposition: some View {
        ZStack {
            Trapezoid(
                leadingAnchor: .topLeading,
                leadingLegInsetPercentage: 66.667,
                trailingLegInsetPercentage: 0
            )
            .opacity(0.8)
            .shadow(radius: 10)
            
            Trapezoid(
                leadingAnchor: .bottomTrailing,
                leadingLegInsetPercentage: 0,
                trailingLegInsetPercentage: 66.667
            )
            .fill(Color.accentColor)
            .opacity(0.5)
            .shadow(radius: 10)
        }
    }
}


// MARK: - Private Helpers
private extension WelcomeSceneViewer {
}


#if DEBUG
// MARK: - Preview
struct WelcomeSceneViewer_Previews: PreviewProvider {
    
    static var previews: some View {
        WelcomeSceneViewer()
    }
}
#endif
