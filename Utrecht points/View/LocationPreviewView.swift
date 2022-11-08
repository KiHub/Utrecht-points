//
//  LocationPreviewView.swift
//  Utrecht points
//
//  Created by  Mr.Ki on 08.11.2022.
//

import SwiftUI

struct LocationPreviewView: View {
    @EnvironmentObject private var locationsViewModel: LocationsViewModel
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 20) {
               imageSection
                textSection
            }
            VStack(spacing: 20) {
                exploreButton
                nextButton
            }
           
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.ultraThinMaterial)
                .offset(y: 50)
            )
        .cornerRadius(20)
        .padding()
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        LocationPreviewView(location: LocationService.locations.first!)
            .environmentObject(LocationsViewModel())
    }
}

extension LocationPreviewView {
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
            }
        }
        .padding(5)
        .background(Color.white)
        .clipShape(Circle())
        .shadow(radius: 10)
    }
    
    private var textSection: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var exploreButton: some View {
        Button {
            
        } label: {
            Text("Let's explore")
                .font(.headline)
                .frame(width: 120, height: 30)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View {
        
           
            Button {
                locationsViewModel.nextButtonPressed()
            } label: {
                Text("Next")
                    .font(.headline)
                    .frame(width: 120, height: 30)
            }
            .buttonStyle(.bordered)
        
    }
    
}