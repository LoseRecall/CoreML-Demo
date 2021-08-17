//
//  ModelOption.swift
//  CoreML
//
//  Created by 郭栋 on 2021/8/12.
//

import UIKit
import Vision
import CoreML

enum ModelOption: String, CaseIterable {
    
    //object detectors
    case yolov3Tiny = "YOLOv3Tiny"
    case e27GlobeMatt = "E27GlobeMatt"
    case lightOnOff = "LightOnOff"
    case lightOnOff2 = "LightOnOff2"
    
    //image classifier
    case mobileNetV2 = "MobileNetV2"
    
    var model: MLModel {
        switch self {
        case .yolov3Tiny:
            return try! YOLOv3Tiny(configuration: MLModelConfiguration()).model
        case .e27GlobeMatt:
            return try! E27GlobeMatt(configuration: MLModelConfiguration()).model
        case .lightOnOff:
            return try! LightOnOff(configuration: MLModelConfiguration()).model
        case .lightOnOff2:
            return try! LightOnOff2(configuration: MLModelConfiguration()).model
        case .mobileNetV2:
            return try! MobileNetV2(configuration: MLModelConfiguration()).model
        }
    }
    
    var modelProcessor: ModelProcessor {
        switch self {
        case .yolov3Tiny,.e27GlobeMatt,.lightOnOff, .lightOnOff2: //实时物体检测
            return ObjectDetector(self)
        case .mobileNetV2: //图片检测
            return ImageClassifier(self)
            
        }
    }
}
