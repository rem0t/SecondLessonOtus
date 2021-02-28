//
//  SecondLessonOtusApp.swift
//  SecondLessonOtus
//
//  Created by Влад Калаев on 17.01.2021.
//

import SwiftUI

@main
struct SecondLessonOtusApp: App {
    var body: some Scene {
        WindowGroup {
            RootView().environmentObject(Router())
                .environmentObject(RecipesViewModel())
        }
    }
}
