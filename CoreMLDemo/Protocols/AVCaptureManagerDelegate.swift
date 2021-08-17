//
//  AVCaptureManagerDelegate.swift
//  CoreMLDemo
//
//  Created by 郭栋 on 2021/8/13.
//

import UIKit
import CoreMedia

protocol AVCaptureManagerDelegate: NSObjectProtocol {
    func didCapture(_ sampleBuffer: CMSampleBuffer)
}
