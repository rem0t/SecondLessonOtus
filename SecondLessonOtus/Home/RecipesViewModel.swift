//
//  RecipesViewModel.swift
//  SecondLessonOtus
//
//  Created by Влад Калаев on 28.02.2021.
//

import Foundation
import Networking

extension Recipe: Identifiable {
    public var id: String {
        href
    }
}

final class RecipesViewModel: ObservableObject {
    
    @Published private(set) var items: [Recipe] = [Recipe]()
    @Published private(set) var page: Int = 0
    @Published private(set) var isPageLoading: Bool = false
    
    init() {}
    
    func loadPage() {
        guard isPageLoading == false else {
            return
        }
        isPageLoading = true
        page += 1
        RecipeAPI.getRecipe(i: "cheese,tomato,garlic", q: nil, p: page) { response, error in
            if let results = response?.results {
                self.items.append(contentsOf: results)
            }
            self.isPageLoading = false
        }
    }
}
