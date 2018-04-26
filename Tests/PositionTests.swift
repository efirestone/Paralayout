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

import Paralayout
import XCTest


class PositionTests: XCTestCase {
    
    func testReflecting() {
        XCTAssertEqual(Position.bottomCenter.reflected(axis: .both), .topCenter)
        XCTAssertEqual(Position.bottomCenter.reflected(axis: .horizontal), .topCenter)
        XCTAssertEqual(Position.bottomCenter.reflected(axis: .vertical), .bottomCenter)
        
        XCTAssertEqual(Position.bottomLeft.reflected(axis: .both), .topRight)
        XCTAssertEqual(Position.bottomLeft.reflected(axis: .horizontal), .topLeft)
        XCTAssertEqual(Position.bottomLeft.reflected(axis: .vertical), .bottomRight)
        
        XCTAssertEqual(Position.bottomRight.reflected(axis: .both), .topLeft)
        XCTAssertEqual(Position.bottomRight.reflected(axis: .horizontal), .topRight)
        XCTAssertEqual(Position.bottomRight.reflected(axis: .vertical), .bottomLeft)
        
        XCTAssertEqual(Position.center.reflected(axis: .both), .center)
        XCTAssertEqual(Position.center.reflected(axis: .horizontal), .center)
        XCTAssertEqual(Position.center.reflected(axis: .vertical), .center)
        
        XCTAssertEqual(Position.leftCenter.reflected(axis: .both), .rightCenter)
        XCTAssertEqual(Position.leftCenter.reflected(axis: .horizontal), .leftCenter)
        XCTAssertEqual(Position.leftCenter.reflected(axis: .vertical), .rightCenter)
        
        XCTAssertEqual(Position.rightCenter.reflected(axis: .both), .leftCenter)
        XCTAssertEqual(Position.rightCenter.reflected(axis: .horizontal), .rightCenter)
        XCTAssertEqual(Position.rightCenter.reflected(axis: .vertical), .leftCenter)
        
        XCTAssertEqual(Position.topCenter.reflected(axis: .both), .bottomCenter)
        XCTAssertEqual(Position.topCenter.reflected(axis: .horizontal), .bottomCenter)
        XCTAssertEqual(Position.topCenter.reflected(axis: .vertical), .topCenter)
        
        XCTAssertEqual(Position.topLeft.reflected(axis: .both), .bottomRight)
        XCTAssertEqual(Position.topLeft.reflected(axis: .horizontal), .bottomLeft)
        XCTAssertEqual(Position.topLeft.reflected(axis: .vertical), .topRight)
        
        XCTAssertEqual(Position.topRight.reflected(axis: .both), .bottomLeft)
        XCTAssertEqual(Position.topRight.reflected(axis: .horizontal), .bottomRight)
        XCTAssertEqual(Position.topRight.reflected(axis: .vertical), .topLeft)
    }
    
}
