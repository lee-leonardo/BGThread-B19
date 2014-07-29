//
//  Queue.swift
//  BGThreadPractice-B19
//
//  Created by Leonardo Lee on 7/28/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import Foundation

class FakeQueue {
//MARK: Data Structure
	var queueObject: [Int]
	
//MARK: Initializer
	init(numberOfStacks: Int) {
		self.queueObject = [Int]()
		for var i = 0; i < numberOfStacks; i++ {
			queueObject.append(self.queueObject.count)
		}
	}
	
//MARK: Queue methods
	func dequeue() {
		println("Before dequeue: \(self.queueObject)")
		self.queueObject.removeAtIndex(0)
		println("After dequque: \(self.queueObject)")
	}
	func enqueue() {
		println("Before enqueue: \(self.queueObject)")
		self.queueObject.append(self.queueObject.count)
		println("After enqueue: \(self.queueObject)")
	}
}