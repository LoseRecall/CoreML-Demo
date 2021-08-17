//
//  ModelSelectionViewDelegate.swift
//  CoreMLDemo
//
//  Created by 郭栋 on 2021/8/12.
//

import UIKit

protocol ModelSelectionViewDelegate: NSObjectProtocol {
    func didSelect(model: ModelOption)
}
