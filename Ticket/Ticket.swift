//
//  Ticket.swift
//  Ticket
//
//  Created by LA Argon on 12/23/16.
//  Copyright © 2016 com.letsappit. All rights reserved.
//

import UIKit
let π: CGFloat = CGFloat(M_PI)

@IBDesignable class Ticket: UIView {

    override func drawRect(rect: CGRect) {
        // Drawing code
        let context = UIGraphicsGetCurrentContext()
        let width = self.bounds.width
        let height = self.bounds.height
        let controlPointDistance: CGFloat = 3.4
        let boundingBoxSide: CGFloat = 10
        
        CGContextMoveToPoint(context, boundingBoxSide, 0)
        CGContextAddLineToPoint(context, self.bounds.width - boundingBoxSide, 0)
//        CGContextAddArc(context, self.bounds.width - 5, 5, 5, 180, 270, 0)
        CGContextAddCurveToPoint(context, self.bounds.width - boundingBoxSide, controlPointDistance, width - controlPointDistance, boundingBoxSide, self.bounds.width, boundingBoxSide)
        CGContextAddLineToPoint(context, self.bounds.width, self.bounds.height - boundingBoxSide)
        CGContextAddCurveToPoint(context, width - controlPointDistance, height - boundingBoxSide, width - boundingBoxSide, height - controlPointDistance, self.bounds.width - boundingBoxSide, self.bounds.height)
        CGContextAddLineToPoint(context, boundingBoxSide, self.bounds.height)
        CGContextAddCurveToPoint(context, boundingBoxSide, height - controlPointDistance, controlPointDistance, height - boundingBoxSide, 0, self.bounds.height - boundingBoxSide)
        CGContextAddLineToPoint(context, 0, boundingBoxSide)
        CGContextAddCurveToPoint(context, controlPointDistance, boundingBoxSide, boundingBoxSide, controlPointDistance, boundingBoxSide, 0)
        CGContextSetRGBFillColor(context, 0, 153, 102, 51)
        CGContextFillPath(context)
//        CGContextSetLineWidth(context, 2.0)
//        CGContextSetStrokeColorWithColor(context, UIColor.yellowColor().CGColor)
        
//        CGContextSetFillColorWithColor(context, UIColor.blueColor().CGColor)
        
    }
    
}
