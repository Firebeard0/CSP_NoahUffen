//
//  Killable.swift
//  CSP_NoahUffens
//
//  Created by Uffens, Noah on 11/20/17.
//  Copyright © 2017 Uffens, Noah. All rights reserved.
//

import Foundation
public protocol Killable
{
    var killState : Bool {get set}
    func kill() -> Void
    func isKilled() -> Bool
}
