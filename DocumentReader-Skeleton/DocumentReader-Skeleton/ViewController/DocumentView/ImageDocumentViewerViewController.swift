//
//  ImageDocumentViewerViewController.swift
//  DocumentReader-Skeleton
//
//  Created by Vignesh Narayanasamy on 2019-12-23.
//  Copyright © 2019 DispatchQ. All rights reserved.
//

import UIKit

class ImageDocumentViewerViewController: UIViewController, DocumentLoader {
    var viewModel: ImageDocumentViewModel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        /*... startLoadingIndicator()*/
        
        self.loadDocument(fileUrl: viewModel.fileUrl) { result in
            
            /*... stopLoadingIndicator()*/
            
            switch result {
            case .success(let data):
                // present document with data
                break
            case .failure(let error):
                // handle error scenario here
                break
            }
        }
    }
}
