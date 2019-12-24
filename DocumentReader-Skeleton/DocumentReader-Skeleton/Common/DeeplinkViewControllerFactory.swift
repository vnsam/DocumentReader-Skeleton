//
//  DeeplinkViewControllerFactory.swift
//  DocumentReader-Skeleton
//
//  Created by Vignesh Narayanasamy on 2019-12-23.
//  Copyright © 2019 DispatchQ. All rights reserved.
//

import UIKit

enum DeeplinkViewControllerFactory {
    static func viewController(forDeeplink deeplink: Deeplink) -> UIViewController {
        switch deeplink.type {
        case .text: return TextDocumentViewerViewController()
        case .presentation: return PresentationDocumentViewerViewController()
        case .image: return ImageDocumentViewerViewController()
        }
    }
}
