//
//  DdayListInteractor.swift
//  D-Day
//
//  Created by Kyeongmo Yang on 1/14/25.
//

import RIBs
import RxSwift

protocol DdayListRouting: ViewableRouting {
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol DdayListPresentable: Presentable {
    var listener: DdayListPresentableListener? { get set }
    // TODO: Declare methods the interactor can invoke the presenter to present data.
}

protocol DdayListListener: AnyObject {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class DdayListInteractor: PresentableInteractor<DdayListPresentable>, DdayListInteractable, DdayListPresentableListener {

    weak var router: DdayListRouting?
    weak var listener: DdayListListener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init(presenter: DdayListPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }

    override func willResignActive() {
        super.willResignActive()
        // TODO: Pause any business logic.
    }
}
