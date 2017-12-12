//
//  ViewController.swift
//  CloudVisionSwift
//
//  Created by ts95 on 12/12/2017.
//  Copyright (c) 2017 ts95. All rights reserved.
//

import UIKit
import CloudVisionSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let apiKey = "[insert API key here]"
        let client = ImageAnnotatorClient(apiKey: apiKey)
        client.labelDetection(image: CVImage(url: "https://i.imgur.com/W6lRbBi.jpg")) { labelAnnotations, error in
            if let error = error { print(error) }
            guard let labelAnnotations = labelAnnotations else { return }
            print(labelAnnotations)
        }
    }
}
