//
//  ModelProcessor.swift
//  CoreMLDemo
//
//  Created by 郭栋 on 2021/8/12.
//

import UIKit
import CoreMedia
import CoreVideo

protocol ModelProcessor {
    var delegate: ModelProcessorDelegate? { get set }
    
    func updateClassifications(for image: UIImage)
    func updateClassifications(for sampleBuffer: CMSampleBuffer)
}
