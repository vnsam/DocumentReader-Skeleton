//
//  DocumentLoader.swift
//  DocumentReader-Skeleton
//
//  Created by Vignesh Narayanasamy on 2019-12-23.
//  Copyright © 2019 DispatchQ. All rights reserved.
//

import UIKit

protocol DocumentLoader where Self: UIViewController {
    func loadDocument(fileUrl: URL, completion : (Result<Data, Error>) -> ())
}

extension DocumentLoader {
    /*... default implementation*/
    func loadDocument(fileUrl: URL, completion : (Result<Data, Error>) -> ()) {
        /*... implementation*/
    }
}
