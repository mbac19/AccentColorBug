//
//  ContentView.swift
//  AccentColorBug
//
//  Created by Brendan McNamara on 6/2/25.
//

import SwiftUI
import StreamChat
import StreamChatUI
import UIKit

struct ContentView: View {
    var body: some View {
        VStack {
            Button("This button should be red") { }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
