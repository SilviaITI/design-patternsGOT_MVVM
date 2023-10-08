//
//  SpinnerView.swift
//  DragonBall_SilviaCasanova
//
//  Created by Silvia Casanova Martinez on 29/9/23.
//

import UIKit

class SpinnerView: UIView {
// MARK: PROPERTIES
    private var shadowLayer: CAShapeLayer!
    private var cornerRadiusSpinner: CGFloat = 10
    private var fillColor: UIColor = .gray

    // MARK: - LAYOUT
    override func layoutSubviews() {
        super.layoutSubviews()
        // shadows configuration
        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadiusSpinner).cgPath
            shadowLayer.fillColor = fillColor.cgColor
            shadowLayer.shadowColor = UIColor.black.cgColor
            layer.insertSublayer(shadowLayer, at: 0)
        }
    }
}
