//
//  ContentView.swift
//  WhatsAppClone
//
//  Created by Anton Chornobay on 01.07.2024.
//

import SwiftUI

struct MainTabView: View {
    init() {
        makeTabBarOpaque()
    }
    var body: some View {
        
        VStack {
            TabView {
                placeholderItemView("Updates")
                    .tabItem {
                        Image(systemName: Tab.updates.icon)
                        Text(Tab.updates.title)
                    }
                placeholderItemView("Calls")
                    .tabItem {
                        Image(systemName: Tab.calls.icon)
                        Text(Tab.calls.title)
                    }
                placeholderItemView("communities")
                    .tabItem {
                        Image(systemName: Tab.communities.icon)
                        Text(Tab.communities.title)
                    }
                placeholderItemView("chats")
                    .tabItem {
                        Image(systemName: Tab.chats.icon)
                        Text(Tab.chats.title)
                    }
                placeholderItemView("settings")
                    .tabItem {
                        Image(systemName: Tab.settings.icon)
                        Text(Tab.settings.title)
                    }
            }
        }
    }
    private func makeTabBarOpaque() {
        let appereance = UITabBarAppearance()
        
        appereance.configureWithOpaqueBackground()
        UITabBar.appearance().standardAppearance = appereance
        UITabBar.appearance().scrollEdgeAppearance = appereance
    }
}

extension MainTabView {
    private func placeholderItemView(_ title: String) -> some View {
       Text(title)
    }
    
    
    
    enum Tab: String {
        case updates, calls, communities, chats, settings
        
        fileprivate var title: String {
            return rawValue.capitalized
        }
        
        fileprivate var icon: String {
            switch self {
            case .updates:
                return "circle.dashed.inset.filled"
            case .calls:
                return "phone"
            case .communities:
                return "person.3"
            case .chats:
                return "message"
            case .settings:
                return "gearshape"
            }
        }
    }
}

#Preview {
    MainTabView()
}
