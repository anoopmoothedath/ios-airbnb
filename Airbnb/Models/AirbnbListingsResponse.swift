//
//  AirbnbListingsResponse.swift
//  Airbnb
//
//  Created by Anoop Moothedath on 11/10/23.
//

import Foundation

struct AirbnbListingsResponse: Codable {
    let total_count: Int
    let results: [AirbnbListing]
}
