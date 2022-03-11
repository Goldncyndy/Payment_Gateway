//
//  PaymentTypeViewController.swift
//  PaymentGateway(Upgrade)
//
//  Created by Decagon on 03/11/2021.
//

import UIKit

class PaymentTypeViewController: UIViewController, UIGestureRecognizerDelegate {
  // MARK: - PAGE TITLE
  let pageTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "Select Payment Method"
    label.numberOfLines = 2
    label.textColor = .white
    label.font = UIFont(name: "Helvetica", size: 20)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - PAYPAL VIEW
  let payPalView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.layer.cornerRadius = 15
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  // MARK: - PAYPAL MINI VIEW
  let payPalMiniView: UIView = {
    let view = UIView()
    view.backgroundColor = .darkGray
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  // MARK: - IMAGE VIEW
  lazy var paypalLogoView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "paypal-logo-1")
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  // MARK: - PAYPAL DESCRIPTION LABEL
  lazy var paypalLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: "Helvetica", size: 18)
    label.numberOfLines = 1
    label.textColor = .black
    label.text = "XXXX-XXXXX-XXXXX-XXXXX"
    return label
  }()
  // MARK: - IMAGE VIEW
  lazy var paypalImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "paypal-logo-1")
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  // MARK: - MASTERCARD VIEW
  let masterCardView: UIView = {
    let view = UIView()
    view.backgroundColor = .blue
    view.layer.cornerRadius = 15
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  // MARK: - MASTERCARD MINI VIEW
  let masterCardMiniView: UIView = {
    let view = UIView()
    view.backgroundColor = .cyan
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  // MARK: - IMAGE VIEW
//  lazy var mastercardLogoView: UIImageView = {
//    let imageView = UIImageView()
//    imageView.image = UIImage(named: "brandhistory_mc1990_100_2x")
//    imageView.contentMode = .scaleAspectFit
//    imageView.translatesAutoresizingMaskIntoConstraints = false
//    return imageView
//  }()
  // MARK: - PAPAL DESCRIPTION LABEL
  lazy var masterCardLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: "Helvetica", size: 18)
    label.numberOfLines = 0
    label.textColor = .black
    label.text = "XXXX-XXXXX-XXXXX-XXXXX"
    return label
  }()
  // MARK: - IMAGE VIEW
  lazy var masterImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "brandhistory_mc1990_100_2x")
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  // MARK: - VISACARD VIEW
  let visaCardView: UIView = {
    let view = UIView()
    view.backgroundColor = .purple
    view.layer.cornerRadius = 15
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  // MARK: - VISACARD MINI VIEW
  let visaCardMiniView: UIView = {
    let view = UIView()
    view.backgroundColor = .magenta
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  // MARK: - IMAGE VIEW
  lazy var visacardLogoView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "visa-logo")
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  // MARK: - PAPAL DESCRIPTION LABEL
  lazy var visacardLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: "Helvetica", size: 18)
    label.numberOfLines = 0
    label.text = "XXXX-XXXXX-XXXXX-XXXXX"
    label.textColor = .black
    return label
  }()
  // MARK: - IMAGE VIEW
  lazy var visaImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "visa-logo")
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .black
    setupConstraints()
    addGestureRecognizerPayPalView()
    addGestureRecognizerMasterCardView()
    addGestureRecognizerVisaView()
  }
  // MARK: - ADD GESTURE RECOGNIZER TO PAYPAL VIEW
  func addGestureRecognizerPayPalView() {
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.onClickOnPayPalView))
      tapGesture.delegate = self
      view.isUserInteractionEnabled = true
      payPalView.addGestureRecognizer(tapGesture)
  }
  @objc func onClickOnPayPalView(sender: UITapGestureRecognizer) {
    let newController = PaystackViewController()
    navigationController?.pushViewController(newController, animated: true)
  }
  // MARK: - ADD GESTURE RECOGNIZER TO MASTERCARD VIEW
  func addGestureRecognizerMasterCardView() {
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.onClickOnMasterCardView))
      tapGesture.delegate = self
      view.isUserInteractionEnabled = true
      masterCardView.addGestureRecognizer(tapGesture)
  }
  @objc func onClickOnMasterCardView(sender: UITapGestureRecognizer) {
    let newController = CardDetailsViewController()
    navigationController?.pushViewController(newController, animated: true)
  }
  // MARK: - ADD GESTURE RECOGNIZER TO VISACARD VIEW
  func addGestureRecognizerVisaView() {
  let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.onClickOnVisaCardView))
    tapGesture.delegate = self
    view.isUserInteractionEnabled = true
    visaCardView.addGestureRecognizer(tapGesture)
  }
  @objc func onClickOnVisaCardView(sender: UITapGestureRecognizer) {
  let newController = CardDetailsViewController()
  navigationController?.pushViewController(newController, animated: true)
  }
  // MARK: - SETUP VIEWS FUNCTION
  func addDefaultViews() {
    view.addSubview(pageTitleLabel)
    view.addSubview(payPalView)
    view.addSubview(payPalMiniView)
    view.addSubview(masterCardView)
    view.addSubview(masterCardMiniView)
    view.addSubview(visaCardView)
    view.addSubview(visaCardMiniView)
    view.addSubview(paypalLogoView)
    view.addSubview(paypalImageView)
    view.addSubview(paypalLabel)
    //view.addSubview(mastercardLogoView)
    view.addSubview(masterImageView)
    view.addSubview(masterCardLabel)
    view.addSubview(visacardLabel)
    view.addSubview(visaImageView)
    view.addSubview(visacardLogoView)
    navigationController?.navigationBar.isHidden = true
  }
  // MARK: - FUNCTION
  func setupConstraints() {
    addDefaultViews()
    NSLayoutConstraint.activate([
      pageTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
      pageTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      // MARK: - PAYPAL VIEW CONSTRAINTS
      payPalView.topAnchor.constraint(equalTo: pageTitleLabel.bottomAnchor, constant: 30),
      payPalView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      payPalView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      payPalView.heightAnchor.constraint(equalToConstant: 200),
      // MARK: - PAYPAL MINI VIEW CONSTRAINTS
      payPalMiniView.topAnchor.constraint(equalTo: payPalView.topAnchor, constant: 35),
      payPalMiniView.leadingAnchor.constraint(equalTo: payPalView.leadingAnchor, constant: 0),
      payPalMiniView.trailingAnchor.constraint(equalTo: payPalView.trailingAnchor, constant: 0),
      payPalMiniView.heightAnchor.constraint(equalToConstant: 50),
      // MARK: - MASTERCARD VIEW CONSTRAINTS
      masterCardView.topAnchor.constraint(equalTo: payPalView.bottomAnchor, constant: 30),
      masterCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      masterCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      masterCardView.heightAnchor.constraint(equalToConstant: 200),
      // MARK: - MASTERCARD MINI VIEW CONSTRAINTS
      masterCardMiniView.topAnchor.constraint(equalTo: masterCardView.topAnchor, constant: 30),
      masterCardMiniView.leadingAnchor.constraint(equalTo: masterCardView.leadingAnchor, constant: 0),
      masterCardMiniView.trailingAnchor.constraint(equalTo: masterCardView.trailingAnchor, constant: 0),
      masterCardMiniView.heightAnchor.constraint(equalToConstant: 50),
      // MARK: - PAYPAL VIEW CONSTRAINTS
      visaCardView.topAnchor.constraint(equalTo: masterCardView.bottomAnchor, constant: 30),
      visaCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      visaCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      visaCardView.heightAnchor.constraint(equalToConstant: 200),
      // MARK: - PAYPAL MINI VIEW CONSTRAINTS
      visaCardMiniView.topAnchor.constraint(equalTo: visaCardView.topAnchor, constant: 30),
      visaCardMiniView.leadingAnchor.constraint(equalTo: visaCardView.leadingAnchor, constant: 0),
      visaCardMiniView.trailingAnchor.constraint(equalTo: visaCardView.trailingAnchor, constant: 0),
      visaCardMiniView.heightAnchor.constraint(equalToConstant: 50),
      // MARK: - PAYPAL-VIEW CONTENT CONSTRAINTS
      paypalLogoView.topAnchor.constraint(equalTo: payPalView.topAnchor, constant: 0),
      paypalLogoView.leadingAnchor.constraint(equalTo: payPalView.leadingAnchor, constant: 10),
      paypalLogoView.heightAnchor.constraint(equalToConstant: 40),
      paypalLogoView.widthAnchor.constraint(equalToConstant: 70),
      paypalLabel.topAnchor.constraint(equalTo: payPalMiniView.bottomAnchor, constant: 15),
      paypalLabel.leadingAnchor.constraint(equalTo: payPalView.leadingAnchor, constant: 10),
      paypalImageView.topAnchor.constraint(equalTo: paypalLabel.bottomAnchor, constant: 5),
      paypalImageView.trailingAnchor.constraint(equalTo: payPalView.trailingAnchor, constant: -20),
      paypalImageView.heightAnchor.constraint(equalToConstant: 100),
      paypalImageView.widthAnchor.constraint(equalToConstant: 100),
      // MARK: - MASTERCARD-VIEW CONTENT CONSTRAINTS
//      mastercardLogoView.topAnchor.constraint(equalTo: masterCardView.topAnchor, constant: -5),
//      mastercardLogoView.leadingAnchor.constraint(equalTo: masterCardView.leadingAnchor, constant: 10),
//      mastercardLogoView.heightAnchor.constraint(equalToConstant: 50),
      masterCardLabel.topAnchor.constraint(equalTo: masterCardMiniView.bottomAnchor, constant: 15),
      masterCardLabel.leadingAnchor.constraint(equalTo: masterCardView.leadingAnchor, constant: 10),
      masterImageView.topAnchor.constraint(equalTo: masterCardLabel.bottomAnchor, constant: 10),
      masterImageView.trailingAnchor.constraint(equalTo: payPalView.trailingAnchor, constant: -20),
      masterImageView.widthAnchor.constraint(equalToConstant: 100),
      masterImageView.heightAnchor.constraint(equalToConstant: 70),
      // MARK: - VISACARD-VIEW CONTENT CONSTRAINTS
      visacardLogoView.topAnchor.constraint(equalTo: visaCardView.topAnchor, constant: -10),
      visacardLogoView.leadingAnchor.constraint(equalTo: visaCardView.leadingAnchor, constant: 10),
      visacardLogoView.widthAnchor.constraint(equalToConstant: 50),
      visacardLogoView.heightAnchor.constraint(equalToConstant: 50),
      visacardLabel.topAnchor.constraint(equalTo: visaCardMiniView.bottomAnchor, constant: 15),
      visacardLabel.leadingAnchor.constraint(equalTo: visaCardView.leadingAnchor, constant: 10),
      visaImageView.topAnchor.constraint(equalTo: visacardLabel.bottomAnchor, constant: 5),
      visaImageView.trailingAnchor.constraint(equalTo: visaCardView.trailingAnchor, constant: -20),
      visaImageView.heightAnchor.constraint(equalToConstant: 100),
      visaImageView.widthAnchor.constraint(equalToConstant: 100)
    ])
  }
}

