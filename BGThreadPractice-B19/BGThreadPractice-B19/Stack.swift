//
//  Stack.swift
//  BGThreadPractice-B19
//
//  Created by Leonardo Lee on 7/28/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import Foundation

class FakeStack {
//MARK: Data Structure
	var stackObject: [Int]
	
//MARK: Initializer
	init(numberOfStacks: Int) {
		self.stackObject = [Int]()
		for var i = 0; i < numberOfStacks; i++ {
			stackObject.append(i)
		}
	}
	
//MARK: Stack Methods
	func push() {
		println("Before push: \(self.stackObject)")
		stackObject.append(self.stackObject.count)
		println("After push: \(self.stackObject)")

	}
	func pop() {
		println("Before pop: \(self.stackObject)")
		stackObject.removeLast()
		println("After pop: \(self.stackObject)")
	}
}