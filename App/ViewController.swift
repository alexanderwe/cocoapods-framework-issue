//
//  ViewController.swift
//  App
//
//  Created by Weiss, Alexander on 28.12.21.
//

import UIKit

class ViewController: UIViewController {

	let label: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false

		label.text = "Hello World!"
		return label

	}()

	override func viewDidLoad() {
		super.viewDidLoad()

		view.addSubview(label)
		NSLayoutConstraint.activate([
			label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
		])
	}
}

