//
//  LocationsListView.swift
//  Utrecht points
//
//  Created by  Mr.Ki on 08.11.2022.
//

import SwiftUI

struct LocationsListView: View {
    
    @EnvironmentObject private var locationsViewModel: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(locationsViewModel.locations) { location in
                Button {
                    locationsViewModel.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
                    .padding(.vertical, 10)
                    .listRowBackground(Color.clear)
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsListView {
    private func listRowView(location: Location) -> some View {
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                   
            }
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
