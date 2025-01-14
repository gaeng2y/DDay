//
//  DdayListViewController.swift
//  D-Day
//
//  Created by Kyeongmo Yang on 1/14/25.
//

import RIBs
import RxSwift
import UIKit

protocol DdayListPresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class DdayListViewController: UIViewController, DdayListPresentable, DdayListViewControllable {
    // MARK: - UI
    
    // MARK: - DdayListPresentable
    weak var listener: DdayListPresentableListener?
}

extension DdayListViewController: RootViewControllable {}
