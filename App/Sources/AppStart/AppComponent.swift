//
//  AppComponent.swift
//  DDay
//
//  Created by Kyeongmo Yang on 1/9/25.
//

import Foundation

import RIBs

class AppComponent: Component<EmptyDependency>, AppRootDependency {
    init() {
        super.init(dependency: EmptyComponent())
    }
}
