//
//  AppComponent.swift
//  D-Day
//
//  Created by Kyeongmo Yang on 1/14/25.
//

import Foundation

import RIBs

class AppComponent: Component<EmptyDependency>, RootDependency {
    init() {
        super.init(dependency: EmptyComponent())
    }
}
