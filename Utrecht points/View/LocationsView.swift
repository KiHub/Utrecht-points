//
//  LocationsView.swift
//  Utrecht points
//
//  Created by  Mr.Ki on 07.11.2022.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    
    @EnvironmentObject private var locationsViewModel: LocationsViewModel
    
    var body: some View {
        ZStack {
            mapView
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                header
                    .padding()
                Spacer()
                ZStack {
                    ForEach(locationsViewModel.locations) { location in
                        if locationsViewModel.mapLocation == location {
                            LocationPreviewView(location: location)
                                .shadow(radius: 20)
                                .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
                        }
                          
                    }
                }
            }
            
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsView {
    
    private var header: some View {
        VStack {
            Button {
                locationsViewModel.toggleLocationsList()
            } label: {
                
                Text(locationsViewModel.mapLocation.name)
                    .font(.title3)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: locationsViewModel.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: locationsViewModel.showLocationsList ? 180 : 0))
                    }
            }
            
            if locationsViewModel.showLocationsList {
                LocationsListView()
            }
        }
        .background(.thinMaterial)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
        
    }
    
    private var mapView: some View {
        Map(coordinateRegion: $locationsViewModel.mapRegion, annotationItems: locationsViewModel.locations, annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                Image("point")
                    .scaleEffect(locationsViewModel.mapLocation == location ? 1.1 : 0.6)
                    .shadow(radius: 5)
                    .onTapGesture {
                        locationsViewModel.showNextLocation(location: location)
                    }
            }
        })
    }
    
}
