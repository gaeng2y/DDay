//
//  DdayListBuilder.swift
//  D-Day
//
//  Created by Kyeongmo Yang on 1/14/25.
//

import RIBs

protocol DdayListDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class DdayListComponent: Component<DdayListDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol DdayListBuildable: Buildable {
    func build(withListener listener: DdayListListener) -> DdayListRouting
}

final class DdayListBuilder: Builder<DdayListDependency>, DdayListBuildable {

    override init(dependency: DdayListDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: DdayListListener) -> DdayListRouting {
        let component = DdayListComponent(dependency: dependency)
        let viewController = DdayListViewController()
        let interactor = DdayListInteractor(presenter: viewController)
        interactor.listener = listener
        return DdayListRouter(interactor: interactor, viewController: viewController)
    }
}
