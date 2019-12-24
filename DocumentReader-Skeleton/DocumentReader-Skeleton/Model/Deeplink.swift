//
//  Deeplink.swift
//  DocumentReader-Skeleton
//
//  Created by Vignesh Narayanasamy on 2019-12-23.
//  Copyright © 2019 DispatchQ. All rights reserved.
//

import Foundation

struct Deeplink {
    var fileUrl: URL!
    
    var type: Deeplink.FileType {
        /*... implementation.
         based on the file extension from deeplink payload.
         */
        
        return .text
    }
    
    enum FileType {
        case text
        case image
        case presentation
    }
}
