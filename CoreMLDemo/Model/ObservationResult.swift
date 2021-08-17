//
//  ObservationResult.swift
//  CoreMLDemo
//
//  Created by 郭栋 on 2021/8/12.
//

import Foundation
import UIKit

struct ObservationResult<ObservationType> {
    let observation: ObservationType
    var boundingBox: CGRect! = nil
}
