//
//  ModelManagerDelegate.swift
//  CoreML
//
//  Created by 郭栋 on 2021/8/12.
//

import UIKit

protocol  ModelManagerDelegate: NSObjectProtocol {
    func justFound()
    func found(_ description: String, boundingBox: CGRect?)
}
