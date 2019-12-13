//
//  DetailViewController.swift
//  Name The Dog
//
//  Created by Keishin CHOU on 2019/12/12.
//  Copyright © 2019 Keishin CHOU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.orange
//        view.contentSize.height = 2000
        
        return view
    }()
    
    lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .systemPink
        
        return contentView
    }()
    
    lazy var label1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        
        return label
    }()
    
    lazy var label2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        
        return label
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "trash")
        
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        let scrollViewHeightConstraint = scrollView.heightAnchor.constraint(equalTo: view.heightAnchor)
        scrollViewHeightConstraint.isActive = true
//        scrollViewHeightConstraint.priority = UILayoutPriority(rawValue: 250)
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
//        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height)
        
//        view.addConstraints([NSLayoutConstraint(item: scrollView,
//                                                attribute: .top,
//                                                relatedBy: .equal,
//                                                toItem: self.view.safeAreaLayoutGuide,
//                                                attribute: .top,
//                                                multiplier: 1,
//                                                constant: 0),
//                             NSLayoutConstraint(item: scrollView,
//                                                attribute: .bottom,
//                                                relatedBy: .equal,
//                                                toItem: self.view.safeAreaLayoutGuide,
//                                                attribute: .bottom,
//                                                multiplier: 1,
//                                                constant: 0),
//                             NSLayoutConstraint(item: scrollView,
//                                                attribute: .leading,
//                                                relatedBy: .equal,
//                                                toItem: self.view,
//                                                attribute: .leading,
//                                                multiplier: 1,
//                                                constant: 0),
//                             NSLayoutConstraint(item: scrollView,
//                                                attribute: .trailing,
//                                                relatedBy: .equal,
//                                                toItem: self.view,
//                                                attribute: .trailing,
//                                                multiplier: 1,
//                                                constant: 0)
//                            ])
        
        scrollView.addSubview(contentView)
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        let contentViewHeightConstraint = contentView.heightAnchor.constraint(equalTo: view.heightAnchor)
        contentViewHeightConstraint.isActive = true
        contentViewHeightConstraint.priority = UILayoutPriority(rawValue: 250)

//        contentView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive

        
//        let contentViewBottomConstrain = contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
//        contentViewBottomConstrain.isActive = true
//        contentViewBottomConstrain.priority = UILayoutPriority(rawValue: 250)

        
        //        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -400).isActive = true
//        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -400).priority = UILayoutPriority(rawValue: 250)
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        contentView.addSubview(label1)
        label1.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//        label1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -400).isActive = true
//        label1.heightAnchor.constraint(equalToConstant: 450)
        label1.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label1.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        label1.numberOfLines = 0
        label1.text = "The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints."
        
        contentView.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: label1.bottomAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 400).isActive = true
//        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageView.image = UIImage(systemName: "trash")
        
        contentView.addSubview(label2)
        label2.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
//        label1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -400).isActive = true
//        label1.heightAnchor.constraint(equalToConstant: 450)
        label2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50).isActive = true
        label2.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label2.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        label2.numberOfLines = 0
        label2.text = "The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints.The way we have always handled this is by not changing the constraint constant, just the priority. For example, in your situation have two height constraints."
        
//        let scrollViewHeight = contentView.frame.maxY + 50
//        scrollView.contentSize.height = scrollViewHeight

//        scrollView.updateContentViewSize()
        
    print("ok")
    }
    
    // THIS IS WHAT I AM LOOKING FOR!!!
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        DispatchQueue.main.async {
            var contentRect = CGRect.zero

            for view in self.scrollView.subviews {
               contentRect = contentRect.union(view.frame)
            }

            self.scrollView.contentSize = contentRect.size
        }
    }
    
}

//extension UIScrollView {
//    func updateContentViewSize() {
//        var newHeight: CGFloat = 0
//        for view in subviews {
//            let ref = view.frame.origin.y + view.frame.height
//            if ref > newHeight {
//                newHeight += ref
//            }
//        }
//        let oldSize = contentSize
//        let newSize = CGSize(width: oldSize.width, height: newHeight + 100)
//        contentSize = newSize
//    }
//}
