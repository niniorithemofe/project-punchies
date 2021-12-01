//
//  imageCollection.swift
//  Punch Me (iOS)
// Created by someone else too
//  Created by Kiana Bauer on 11/9/21.
//


import SwiftUI
import Combine

struct ImageCarouselView<Content: View>: View {
    private var numberOfImages: Int
    private var content: Content

    @State private var currentIndex: Int = 0
    
    private let timer = Timer.publish(every: 6, on: .main, in: .common).autoconnect()

    init(numberOfImages: Int, @ViewBuilder content: () -> Content) {
        self.numberOfImages = numberOfImages
        self.content = content()
    }

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing:10) {
                self.content
            }
            .frame(width: 300, height: 300)
            .offset(x: CGFloat(self.currentIndex) * -geometry.size.width, y: -150)
            .animation(.spring())
            .onReceive(self.timer) { _ in
                
                self.currentIndex = (self.currentIndex + 1) % 3
            }
            
        }
        
    }
}

