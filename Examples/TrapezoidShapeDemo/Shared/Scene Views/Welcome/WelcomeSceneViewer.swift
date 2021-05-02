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
    @State
    private var screenHeight = CGFloat(0)
    
    @State
    private var headerSlantPercentage = CGFloat(20)
    
    @State
    private var leadingSlantPercentage = CGFloat(20)
    
    @State
    private var trailingSlantPercentage = CGFloat(20)
    
}


// MARK: - `View` Body
extension WelcomeSceneViewer: View {
    
    var body: some View {
        VStack(spacing: 32.0) {
            headerSection
            
            Text("Trapezoids!")
                .font(.custom("Abolition-Regular", size: 32, relativeTo: .body))
            
            HStack {
                galaxyTrapezoid
                    .frame(height: 160, alignment: .center)
                
                galaxyTrapezoid
                    .frame(height: 160, alignment: .center)
                    .scaleEffect(x: -1.0, y: 1.0, anchor: .center)
            }
            .padding(.horizontal)

            
            controlsSection
                .padding(.horizontal)
            
            
            footerComposition
        }
        .edgesIgnoringSafeArea(.vertical)
        .readingFrameSize { newSize in
            screenHeight = newSize.height
        }
    }
}


// MARK: - Computeds
extension WelcomeSceneViewer {
}


// MARK: - View Content Builders
private extension WelcomeSceneViewer {
    
    var galaxyTrapezoidShape: some Shape {
        Trapezoid(
            leadingAnchor: .topLeading,
            trailingAnchor: .bottomLeading,
            leadingLegInsetPercentage: leadingSlantPercentage,
            trailingLegInsetPercentage: trailingSlantPercentage
        )
    }
    
    
    var galaxyTrapezoid: some View {
        galaxyTrapezoidShape
            .shadow(radius: 10)
            .overlay(
                ImageAssets.nightSky2
                    .resizable()
                    .scaledToFill()
                    .shadow(radius: 10)
            )
            .clipShape(galaxyTrapezoidShape)
    }
    
    
    var headerSection: some View {
        VStack {
            footerComposition
                .scaleEffect(x: 1.0, y: -1.0, anchor: .center)
        }
    }
    
    
    var controlsSection: some View {
        VStack(spacing: 24) {
            VStack {
                Slider(value: $leadingSlantPercentage, in: 0.0...100.0, step: 0.5) {
                    Text("Leading Slant Percentage")
                }
                
                
                Text("Leading Slant Percentage")
                    .font(.footnote)
            }
            
            VStack {
                Slider(value: $trailingSlantPercentage, in: 0.0...100.0, step: 0.5) {
                    Text("Trailing Slant Percentage")
                }
                
                Text("Trailing Slant Percentage")
                    .font(.footnote)
            }
            
            Button("Reset Slants") {
                withAnimation(.easeInOut) {
                    leadingSlantPercentage = .zero
                    trailingSlantPercentage = .zero
                }
            }
            .font(.headline)
        }
    }
    
    
    var footerComposition: some View {
        ZStack {
            Trapezoid(
                leadingAnchor: .topLeading,
                leadingLegInsetPercentage: 66.667,
                trailingLegInsetPercentage: 0
            )
            .fill(ThemeColors.secondary1)
            .opacity(0.8667)
            .shadow(radius: 10)
            
            Trapezoid(
                leadingAnchor: .bottomTrailing,
                leadingLegInsetPercentage: 0,
                trailingLegInsetPercentage: 66.667
            )
            .fill(Color.accentColor)
            .opacity(0.5667)
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
            .accentColor(ThemeColors.accent)
    }
}
#endif
