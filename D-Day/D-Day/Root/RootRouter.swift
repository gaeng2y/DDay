//
//  RootRouter.swift
//  D-Day
//
//  Created by Kyeongmo Yang on 1/14/25.
//

import RIBs

protocol RootInteractable: Interactable {
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

protocol RootViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy. Since
    // this RIB does not own its own view, this protocol is conformed to by one of this
    // RIB's ancestor RIBs' view.
}

final class RootRouter: LaunchRouter<RootInteractable, RootViewControllable>, RootRouting {
    private let dDayListBuider: DdayListBuildable
    private var dDayListRouter: DdayListRouting?
    
    init(
        dDayListBuider: DdayListBuildable,
        interactor: RootInteractable,
        viewController: RootViewControllable
    ) {
        self.dDayListBuider = dDayListBuider
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
    
    func cleanupViews() {
        // TODO: Since this router does not own its view, it needs to cleanup the views
        // it may have added to the view hierarchy, when its interactor is deactivated.
    }
}
