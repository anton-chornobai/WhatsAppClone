//
//  UpdateTabScreen.swift
//  WhatsAppClone
//
//  Created by Anton Chornobay on 06.07.2024.
//

import SwiftUI

struct UpdateTabScreen: View {
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            List {
                StatusMessageView()
                StatusSection()
                    

            }
            .navigationTitle("Updates")
            .searchable(text: $searchText)
            
        }
        
    };
}


private struct StatusMessageView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "circle.dashed")
            Text("You can manipulate the map to zoom out a bit and see the surrounding area using the Option-click-drag control. ") +
            Text("Status Privacy")
                .bold()
                .foregroundStyle(.blue)
        }
    }
}

private struct StatusSection: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 55, height: 55)

            VStack(alignment: .leading) {
                Text("My status")
                    .font(.callout)
                    .bold()
                    
                    
                Text("Add to my status")
                    .font(.system(size: 15))
                    .foregroundStyle(Color.gray)
                
            }
            Spacer()
            cameraButton()
            
            
            
        }
    
        }
    private func cameraButton() -> some View {
        Button {
            
        } label: {
            Image(systemName: "camera.fill")
                .padding(10)
                
                
        }
        
    }

}
#Preview {
    UpdateTabScreen()
}
