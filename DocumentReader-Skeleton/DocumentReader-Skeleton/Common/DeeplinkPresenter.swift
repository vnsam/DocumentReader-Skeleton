//
//  DeeplinkPresenter.swift
//  DocumentReader-Skeleton
//
//  Created by Vignesh Narayanasamy on 2019-12-23.
//  Copyright © 2019 DispatchQ. All rights reserved.
//

import Foundation

protocol DeeplinkPresenter {
    func presentViewController(forDeeplink deeplink: Deeplink)
}
