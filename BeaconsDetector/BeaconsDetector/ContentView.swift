//
//  ContentView.swift
//  BeaconsDetector
//
//  Created by Amr Hesham on 10/10/2021.
//

import SwiftUI
import Combine
import CoreLocation

struct ContentView: View {
    @ObservedObject var detector = BeaconDetector()
    var body: some View {
 
        switch detector.lastDistance {
        case CLProximity.immediate:
            BeaconStateView(beaconState: "immediate")
        case .unknown:
            BeaconStateView(beaconState: "unknown")
        case .near:
            BeaconStateView(beaconState: "near")
        case .far:
            BeaconStateView(beaconState: "far")
        @unknown default:
            BeaconStateView(beaconState: "unknown")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
