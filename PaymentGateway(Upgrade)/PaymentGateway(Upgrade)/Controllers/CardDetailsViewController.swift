//
//  CardDetailsViewController.swift
//  PaymentGateway(Upgrade)
//
//  Created by Decagon on 03/11/2021.
//

import UIKit

class CardDetailsViewController: UIViewController {
  // MARK: - PAGE TITLE LABEL
  let titleLabel: UILabel = {
    let label = UILabel()
    label.text = " Enter Payment Details"
    label.numberOfLines = 0
    label.textColor = .white
    label.font = UIFont(name: "Helvetica", size: 20)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - IMAGE LABEL
  lazy var imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFit
    imageView.image = UIImage(named: "visa-master-paypal")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  // MARK: - PAGE VIEW
  let pageView: UIView = {
    let view = UIView()
    view.backgroundColor = .gray
    view.layer.cornerRadius = 15
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  // MARK: - Label for password
  let cardNumberLabel: UILabel = {
    let label = UILabel()
    label.text = "Card Number"
    label.font = UIFont(name: "Helvetica", size: 18)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 18)
    return label
  }()
  // MARK: - expiry date label
  lazy var expiryDateLabel: UILabel = {
    let label = UILabel()
    label.text = "Expiry Date"
    label.font = UIFont(name: "Helvetica", size: 18)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 18)
    return label
  }()
  // MARK: - CVV number label
  lazy var cvvLabel: UILabel = {
    let label = UILabel()
    label.text = "CVV"
    label.font = UIFont(name: "Helvetica", size: 18)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 18)
    return label
  }()
  // MARK: - Name of card label
  lazy var cardNameLabel: UILabel = {
    let label = UILabel()
    label.text = "Name on Card"
    label.font = UIFont(name: "Helvetica", size: 18)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 18)
    return label
  }()
  // MARK: - Textfield to enter card number
  lazy var cardNumberTextView: LeftPaddedTextField = {
        let textField = LeftPaddedTextField()
        textField.tintColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.borderWidth = 0
        textField.layer.cornerRadius = 8
        return textField
  }()
  // MARK: - Textfield to enter expiry date
  lazy var expiryDateTextView: LeftPaddedTextField = {
      let textField = LeftPaddedTextField()
      textField.tintColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
      textField.layer.borderColor = UIColor.lightGray.cgColor
      textField.translatesAutoresizingMaskIntoConstraints = false
      textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
      textField.layer.borderWidth = 0
      textField.layer.cornerRadius = 8
      return textField
}()
  // MARK: - Textfield to enter cvv digits
  lazy var cvvTextView: LeftPaddedTextField = {
      let textField = LeftPaddedTextField()
      textField.tintColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
      textField.layer.borderColor = UIColor.lightGray.cgColor
      textField.translatesAutoresizingMaskIntoConstraints = false
      textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
      textField.layer.borderWidth = 0
      textField.layer.cornerRadius = 8
      return textField
}()
  // MARK: - Textfield to enter name on card
  lazy var nameTextView: LeftPaddedTextField = {
      let textField = LeftPaddedTextField()
      textField.tintColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
      textField.layer.borderColor = UIColor.lightGray.cgColor
      textField.translatesAutoresizingMaskIntoConstraints = false
      textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
      textField.layer.borderWidth = 0
      textField.layer.cornerRadius = 8
      return textField
}()
  lazy var makePaymentButton: UIButton = {
    let button = UIButton()
    button.setTitle("Make Payment", for: .normal)
    button.addTarget(self, action: #selector(didTapPaymentButton), for: .touchUpInside)
    button.backgroundColor = .black
    button.setTitleColor(.white, for: .normal)
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 8
    return button
  }()
    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = .black
      navigationController?.navigationBar.isHidden = false
      navigationController?.navigationBar.barTintColor = .black
      setupViewsConstraints()
    }
  // MARK: - SETUP VIEWS FOR PROFILE PAGE VIEWCONTROLLER
  func setupViews() {
    view.addSubview(titleLabel)
    view.addSubview(imageView)
    view.addSubview(pageView)
    view.addSubview(cardNameLabel)
    view.addSubview(cardNumberLabel)
    view.addSubview(expiryDateLabel)
    view.addSubview(cvvLabel)
    view.addSubview(makePaymentButton)
    view.addSubview(cardNumberTextView)
    view.addSubview(nameTextView)
    view.addSubview(cvvTextView)
    view.addSubview(expiryDateTextView)
  }
  func setupViewsConstraints() {
    setupViews()
    NSLayoutConstraint.activate([
      // MARK: - Title Label Constraints
      titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
      titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      // MARK: - ImageView Constraints
      imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
      imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      imageView.heightAnchor.constraint(equalToConstant: 80),
      // MARK: - page View Constraints
      pageView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30),
      pageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 2),
      pageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -2),
      pageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
      // MARK: - Card Number Label Constraints
      cardNumberLabel.topAnchor.constraint(equalTo: pageView.topAnchor, constant: 30),
      cardNumberLabel.leadingAnchor.constraint(equalTo: pageView.leadingAnchor, constant: 30),
      // MARK: - Card Number TextView Constraints
      cardNumberTextView.topAnchor.constraint(equalTo: cardNumberLabel.bottomAnchor, constant: 5),
      cardNumberTextView.leadingAnchor.constraint(equalTo: pageView.leadingAnchor, constant: 30),
      cardNumberTextView.trailingAnchor.constraint(equalTo: pageView.trailingAnchor, constant: -30),
      cardNumberTextView.heightAnchor.constraint(equalToConstant: 45),
      // MARK: - Expiry Date Label Constraints
      expiryDateLabel.topAnchor.constraint(equalTo: cardNumberTextView.bottomAnchor, constant: 30),
      expiryDateLabel.leadingAnchor.constraint(equalTo: pageView.leadingAnchor, constant: 30),
      // MARK: - Expiry Date TextView Constraints
      expiryDateTextView.topAnchor.constraint(equalTo: expiryDateLabel.bottomAnchor, constant: 5),
      expiryDateTextView.leadingAnchor.constraint(equalTo: pageView.leadingAnchor, constant: 30),
      expiryDateTextView.heightAnchor.constraint(equalToConstant: 45),
      expiryDateTextView.widthAnchor.constraint(equalToConstant: 170),
      // MARK: - CVV Label Constraints
      cvvLabel.topAnchor.constraint(equalTo: cardNumberTextView.bottomAnchor, constant: 30),
      cvvLabel.leadingAnchor.constraint(equalTo: expiryDateLabel.trailingAnchor, constant: 90),
      // MARK: - CVV TextView Constraints
      cvvTextView.topAnchor.constraint(equalTo: cvvLabel.bottomAnchor, constant: 5),
      cvvTextView.trailingAnchor.constraint(equalTo: pageView.trailingAnchor, constant: -30),
      cvvTextView.heightAnchor.constraint(equalToConstant: 45),
      cvvTextView.widthAnchor.constraint(equalToConstant: 170),
      // MARK: - Card Name Label Constraints
      cardNameLabel.topAnchor.constraint(equalTo: cvvTextView.bottomAnchor, constant: 30),
      cardNameLabel.leadingAnchor.constraint(equalTo: pageView.leadingAnchor, constant: 30),
      // MARK: - Name TextView Constraints
      nameTextView.topAnchor.constraint(equalTo: cardNameLabel.bottomAnchor, constant: 5),
      nameTextView.leadingAnchor.constraint(equalTo: pageView.leadingAnchor, constant: 30),
      nameTextView.trailingAnchor.constraint(equalTo: pageView.trailingAnchor, constant: -30),
      nameTextView.heightAnchor.constraint(equalToConstant: 45),
      // MARK: - make Payment Button
      //makePaymentButton.topAnchor.constraint(equalTo: nameTextView.bottomAnchor, constant: 60),
      makePaymentButton.leadingAnchor.constraint(equalTo: pageView.leadingAnchor, constant: 30),
      makePaymentButton.trailingAnchor.constraint(equalTo: pageView.trailingAnchor, constant: -30),
      makePaymentButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
      makePaymentButton.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  @objc func didTapPaymentButton() {
    
  }
}

class LeftPaddedTextField: UITextField {
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
  }
