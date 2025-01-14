//
//  RootBuilder.swift
//  D-Day
//
//  Created by Kyeongmo Yang on 1/14/25.
//

import RIBs

protocol RootDependency: Dependency {}

final class RootComponent: Component<RootDependency>, DdayListDependency {
}

// MARK: - Builder

protocol RootBuildable: Buildable {
    func build() -> LaunchRouting
}

final class RootBuilder: Builder<RootDependency>, RootBuildable {

    override init(dependency: RootDependency) {
        super.init(dependency: dependency)
    }

    func build() -> LaunchRouting {
        let component = RootComponent(dependency: dependency)
        let dDayListBuilder = DdayListBuilder(dependency: component)
        let interactor = RootInteractor()
        let viewController = DdayListViewController()
        return RootRouter(
            dDayListBuider: dDayListBuilder,
            interactor: interactor,
            viewController: viewController
        )
    }
}
