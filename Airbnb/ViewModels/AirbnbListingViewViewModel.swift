//
//  AirbnbListingViewViewModel.swift
//  Airbnb
//
//  Created by Anoop Moothedath on 11/10/23.
//

import Foundation

final class AirbnbListingViewViewModel: ObservableObject {
    private let service = APIService()
    
    @Published var listings: [AirbnbListing] = []
    
    public func fetchListings() {
        service.getListings { [weak self] result in
            switch result {
            case .success(let models):
                self?.listings = models
            case .failure(let failure):
                break
            }
        }
    }

}
