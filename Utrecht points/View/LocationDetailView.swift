//
//  LocationDetailView.swift
//  Utrecht points
//
//  Created by  Mr.Ki on 09.11.2022.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    @EnvironmentObject private var viewModel: LocationsViewModel
    let location: Location
    
    var body: some View {
        
            ScrollView {
                VStack {
                   imageSection
                        .shadow(radius: 20)
                    VStack(alignment: .leading, spacing: 15) {
                       titleSection
                        Divider()
                        descriptionSection
                        Divider()
                        mapView
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                }
            }
            .ignoresSafeArea()
            .background(.ultraThinMaterial)
            .overlay(alignment: .topLeading) {
                backButton
            }
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        if let loc = LocationService.locations.first {
        LocationDetailView(location: loc)
                .environmentObject(LocationsViewModel())
        }
    }
}


extension LocationDetailView {
    private var imageSection: some View {
        TabView {
            ForEach(location.imageNames, id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                   .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    private var titleSection: some View {
        Text(location.name)
            .font(.largeTitle)
            .fontWeight(.semibold)
    }
    private var descriptionSection: some View {
        Text(location.description)
            .font(.subheadline)
            .foregroundColor(.secondary)
    }
    private var mapView: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(center: location.coordinates, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))), annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                Image("point")
                   // .scaleEffect(viewModel.mapLocation == location ? 1.1 : 0.6)
                    .shadow(radius: 5)
                    
            }
        }
        .aspectRatio(1, contentMode: .fit)
        .cornerRadius(20)
    }
    private var backButton: some View {
        Button {
            viewModel.sheetLocation = nil
        } label: {
            Image(systemName: "arrow.backward")
        }
        .font(.headline)
        .padding()
        .foregroundColor(.primary)
        .background(.thinMaterial)
        .clipShape(Circle())
        .padding()
       
    }
}
