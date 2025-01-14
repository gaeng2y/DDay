//
//  DdayListRouter.swift
//  D-Day
//
//  Created by Kyeongmo Yang on 1/14/25.
//

import RIBs

protocol DdayListInteractable: Interactable {
    var router: DdayListRouting? { get set }
    var listener: DdayListListener? { get set }
}

protocol DdayListViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class DdayListRouter: ViewableRouter<DdayListInteractable, DdayListViewControllable>, DdayListRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: DdayListInteractable, viewController: DdayListViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
