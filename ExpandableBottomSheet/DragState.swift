//
//  DragState.swift
//  ExpandableBottomSheet
//
//  Created by Omar Alejandro Robles Altamirano on 18/06/20.
//  Copyright © 2020 Omar Alejandro Robles Altamirano. All rights reserved.
//

import CoreGraphics

enum DragState{
    case none
    case pressing
    case dragging(translation: CGSize)
    
    var translation: CGSize{
        switch self {
        case .none, .pressing:
            return .zero
        case .dragging(let translation):
            return translation
        }
    }
    
    var isPressing: Bool{
        switch self {
        case .pressing, .dragging:
            return true
        case .none:
            return false
        }
    }
    
    var isDragging: Bool{
        switch self {
        case .dragging:
            return true
        default:
            return false
        }
    }
}
