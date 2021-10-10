//
//  BeaconStateView.swift
//  BeaconsDetector
//
//  Created by Amr Hesham on 10/10/2021.
//

import SwiftUI

struct BeaconStateView: View {
    var beaconState: String?
    var body: some View {
        Text(beaconState ?? "")
            .font(Font.system(size: 56, design: .rounded))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.gray)
            .edgesIgnoringSafeArea(.all)

    }
}

struct BeaconStateView_Previews: PreviewProvider {
    static var previews: some View {
        BeaconStateView()
    }
}
