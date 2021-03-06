//
//  TaskOperators.swift
//  SwiftyTasks
//
//  Created by Victor Pavlychko on 9/18/16.
//  Copyright © 2016 address.wtf. All rights reserved.
//

import Foundation

precedencegroup PartialApplicationPrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
    lowerThan: TernaryPrecedence
}

/// Partial application operator
///
/// - parameter lhs: Function
/// - parameter rhs: Argument
///
/// - returns: `lhs` with first argument bound to `rhs`
infix operator <~ : PartialApplicationPrecedence

/// Add dependency operator
///
/// - parameter lhs: Dependent Operation
/// - parameter rhs: Dependency Operation
///
/// - returns: `lhs`
infix operator ~~ : PartialApplicationPrecedence

// We do not define `~>` operator because stdlib aready did that for it's weird reasons...

//precedencegroup ReverseApplicationPrecedence {
//    associativity: left
//    higherThan: PartialApplicationPrecedence
//}

/// Application operator
///
/// - parameter lhs: Argument tuple
/// - parameter rhs: Function
///
/// - returns: `rhs` with arguments bound to `lhs`
//infix operator ~> : ReverseApplicationPrecedence
