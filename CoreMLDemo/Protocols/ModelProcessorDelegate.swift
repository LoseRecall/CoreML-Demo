//
//  ModelProcessorDelegate.swift
//  CoreML
//
//  Created by 郭栋 on 2021/8/12.
//

import UIKit
import Vision

protocol ModelProcessorDelegate: AnyObject {
    func justProcessed()
    func didProcess(results: [ObservationResult<VNRecognizedObjectObservation>], description: String)
    func didProcess(results: [ObservationResult<VNClassificationObservation>], description: String)
}
