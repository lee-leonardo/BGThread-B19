//
//  ViewController.swift
//  BGThreadPractice-B19
//
//  Created by Leonardo Lee on 7/28/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//MARK: IBOutlet
	@IBOutlet weak var imageView: UIImageView!
	
//MARK: IBAction Method
	@IBAction func fetchImage(sender: AnyObject) {
		var createdQueue = NSOperationQueue() //This creates a OperationQueue.
		createdQueue.addOperationWithBlock({ () -> Void in
			//In here I make the URL call.
			var url = NSURL(fileURLWithPath: "http://images2.fanpop.com/image/photos/9700000/Sad-Puppy-puppies-9726248-1600-1200.jpg")
			
			//Old School?
//http://4.bp.blogspot.com/-a2_c22CQ2iA/UPXkuuVTUGI/AAAAAAAABvE/2o2OicjpF98/s1600/gecko3use.jpg
			//var request = NSURLRequest(URL: url)
			//var data = NSData(contentsOfFile: request)
			
			var data = NSData(contentsOfURL: url)
			var fetchedImage = UIImage(data: data)
			
			NSOperationQueue.mainQueue().addOperationWithBlock() {
				self.imageView.image = fetchedImage
			}			
		})
	}
	
//MARK: ViewController methods
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

