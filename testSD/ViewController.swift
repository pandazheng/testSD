//
//  ViewController.swift
//  testSD
//
//  Created by ZY on 14/8/5.
//  Copyright (c) 2014年 ShenZhen YiKaoBang IT Co., Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
	@IBOutlet weak var imageView: UIImageView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let block: SDWebImageCompletionBlock! = {(image: UIImage!, error: NSError!, cacheType: SDImageCacheType!, imageURL: NSURL!) -> Void in
			println(self)
		}
		
		let url = NSURL(string: "http://yikaobang-test.u.qiniudn.com/FnZTPYbldNXZi7cQ5EJHmKkRDTkj")

		self.imageView.sd_setImageWithURL(url, completed: block)
	}
}

