//
//  AcknowledgementsViewController.swift
//  
//
//  Created by Gray Campbell on 4/15/20.
//

import UIKit

// MARK: Properties & Initializers

public class AcknowledgementsViewController: UIViewController {
    
    // MARK: Properties
    
    private let acknowledgements: [Acknowledgement]
    
    private let textView = UITextView()
    
    private lazy var acknowledgementsText = self.acknowledgements.map(\.fullText).joined(separator: "\n\n\n\n")
    
    // MARK: Initializers
    
    public init(acknowledgements: [Acknowledgement]) {
        self.acknowledgements = acknowledgements
        
        super.init(nibName: nil, bundle: nil)
        
        self.title = "Acknowledgements"
    }
    
    public required init?(coder: NSCoder) {
        return nil
    }
}

// MARK: - View Setup

extension AcknowledgementsViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addTextView()
        self.addTextViewConstraints()
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.textView.isScrollEnabled = true
    }
}

// MARK: - Text View

extension AcknowledgementsViewController {
    private func addTextView() {
        self.textView.font = .systemFont(ofSize: 14)
        self.textView.text = self.acknowledgementsText
        self.textView.textContainerInset = .init(top: 20, left: 20, bottom: 20, right: 20)
        self.textView.isEditable = false
        self.textView.isScrollEnabled = false
        self.textView.translatesAutoresizingMaskIntoConstraints = false
        
        if #available(iOS 13.0, *) {
            self.textView.textColor = .secondaryLabel
        }
        else {
            self.textView.textColor = .systemGray
        }
        
        self.view.addSubview(self.textView)
    }
    
    private func addTextViewConstraints() {
        if #available(iOS 9.0, *) {
            NSLayoutConstraint.activate([
                self.textView.topAnchor.constraint(equalTo: self.view.topAnchor),
                self.textView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
                self.textView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                self.textView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
            ])
        }
        else {
            NSLayoutConstraint.activate([
                NSLayoutConstraint(item: self.textView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: self.textView, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: self.textView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: self.textView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
            ])
        }
    }
}
