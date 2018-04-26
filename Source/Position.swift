//
//  Copyright © 2018 Square, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation


/// Locations within a rectangle.
public enum Position {
    
    case topLeft, topCenter, topRight
    case leftCenter, center, rightCenter
    case bottomLeft, bottomCenter, bottomRight
    
}

// MARK: -

public extension Position {
    
    public enum ReflectionAxis {
        /// Reflect left and right positions.
        case horizontal
        
        /// Reflect top and bottom positions.
        case vertical
        
        /// Reflect top, bottom, left, and right positions.
        case both
    }
    
    /// The "opposite" position.
    /// - parameter axis: The axis or axes to reflect across.
    /// - returns: A position on the opposite side/corner as specified.
    public func reflected(axis: ReflectionAxis) -> Position {
        let horizontally = (axis == .vertical || axis == .both)
        let vertically = (axis == .horizontal || axis == .both)
        
        switch self {
        case .topLeft:
            if horizontally {
                return vertically ? .bottomRight : .topRight
            } else {
                return vertically ? .bottomLeft : .topLeft
            }
            
        case .topCenter:
            return vertically ? .bottomCenter : .topCenter
            
        case .topRight:
            if horizontally {
                return vertically ? .bottomLeft : .topLeft
            } else {
                return vertically ? .bottomRight : .topRight
            }
            
        case .leftCenter:
            return horizontally ? .rightCenter : .leftCenter
            
        case .center:
            return .center
            
        case .rightCenter:
            return horizontally ? .leftCenter : .rightCenter
            
        case .bottomLeft:
            if horizontally {
                return vertically ? .topRight : .bottomRight
            } else {
                return vertically ? .topLeft : .bottomLeft
            }
            
        case .bottomCenter:
            return vertically ? .topCenter : .bottomCenter
            
        case .bottomRight:
            if horizontally {
                return vertically ? .topLeft : .bottomLeft
            } else {
                return vertically ? .topRight : .bottomRight
            }
        }
    }
    
}
