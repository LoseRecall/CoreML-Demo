//
//  ViewCode.swift
//  CoreMLDemo
//
//  Created by 郭栋 on 2021/8/13.
//

import UIKit

protocol ViewCode: UIView {
    func buildViewHierarchy()
    func setupContraints()
    func setupAdditionalConfiguration()

    func setupView()
    func reloadView()
}

extension ViewCode {

    func setupView() {
        buildViewHierarchy()
        setupContraints()
        setupAdditionalConfiguration()
    }

    func reloadView() {
        self.subviews.forEach { $0.removeFromSuperview() }
        setupView()
    }

    func setupAdditionalConfiguration() {
        self.backgroundColor = .black
    }
}
