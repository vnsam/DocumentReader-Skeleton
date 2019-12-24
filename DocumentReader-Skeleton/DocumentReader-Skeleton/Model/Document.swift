//
//  Document.swift
//  DocumentReader-Skeleton
//
//  Created by Vignesh Narayanasamy on 2019-12-23.
//  Copyright © 2019 DispatchQ. All rights reserved.
//

import Foundation

protocol FilePayload {
    var fileUrl: URL { get set }
}

struct Document {}

extension Document {
    struct Text: FilePayload {
        var fileUrl: URL
    }
}

extension Document {
    struct Presentation: FilePayload {
        var fileUrl: URL
    }
}

extension Document {
    struct Image: FilePayload {
        var fileUrl: URL
    }
}

extension Document.Image {
    enum `Type` {
        case png
        case jpeg
    }
}
