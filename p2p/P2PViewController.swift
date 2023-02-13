import UIKit
import SnapKit

struct Colors {
    static let greyCol = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
}

// MARK: - HeaderView

final class HeaderView: UIView {

    private let cardIcon: UIImageView = {
        let image = UIImage(named: "cardImg")
        let imageView = UIImageView(image: image?.withRenderingMode(.alwaysOriginal))
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let cardTextField: UITextField = {
        let textField = UITextField()
        textField.autocorrectionType = .no
        textField.placeholder = "Введите номер карты"
        textField.textColor = UIColor(red: 170/255, green: 171/255, blue: 173/255, alpha: 1.0)
        textField.font = .systemFont(ofSize: 17)
        textField.becomeFirstResponder()
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupLayer()
        self.setupHeaderUI()
    }
    
    private func setupLayer() {
        self.backgroundColor = Colors.greyCol
        self.layer.cornerRadius = 16.0
    }
    
    private func setupHeaderUI() {
        self.setSubviews()
        self.setConstraints()
    }
    
    private func setSubviews() {
        self.addSubview(cardIcon)
        self.addSubview(cardTextField)
    }
    
    private func setConstraints() {
        
        cardIcon.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(16)
            make.leading.equalTo(self.snp.leading).offset(20)
            make.bottom.equalTo(self.snp.bottom).offset(-16)
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        
        cardTextField.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(18)
            make.leading.equalTo(self.cardIcon.snp.trailing).offset(14)
            make.bottom.equalTo(self.snp.bottom).offset(-18)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - ReceiverView

final class ReceiverView: UIView {
    
    private let receiverIcon: UIImageView = {
        let image = UIImage(named: "friendsImg")
        let imageView = UIImageView(image: image?.withRenderingMode(.alwaysOriginal))
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let receiverLabel: UILabel = {
        let label = UILabel()
        label.text = "Получатели"
        label.font = .systemFont(ofSize: 13, weight: .regular)
        label.textColor = .black
        return label
    }()
    
    private let receiverButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 20.0
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupLayer()
        self.setupReceiverUI()
    }
    
    private func setupLayer() {
        self.backgroundColor = Colors.greyCol
        self.layer.cornerRadius = 20.0
    }
    
    private func setupReceiverUI() {
        self.setSubviews()
        self.setConstraints()
    }
    
    private func setSubviews() {
        self.addSubview(receiverIcon)
        self.addSubview(receiverLabel)
        self.addSubview(receiverButton)
    }
    
    private func setConstraints() {
        
        receiverIcon.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(16)
            make.leading.equalTo(self.snp.leading).offset(16)
            make.size.equalTo(CGSize(width: 32, height: 32))
        }
        
        receiverLabel.snp.makeConstraints { make in
            make.top.equalTo(self.receiverIcon.snp.bottom).offset(8)
            make.leading.equalTo(self.receiverIcon.snp.leading)
            make.bottom.equalTo(self.snp.bottom).offset(-16)
        }
        
        receiverButton.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top)
            make.leading.equalTo(self.snp.leading)
            make.trailing.equalTo(self.snp.trailing)
            make.bottom.equalTo(self.snp.bottom)
            make.width.equalTo(self.snp.width)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

final class TransferView: UIView {
    
    private let transferIcon: UIImageView = {
        let image = UIImage(named: "arrows_round")
        let imageView = UIImageView(image: image?.withRenderingMode(.alwaysOriginal))
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let transferLabel: UILabel = {
        let label = UILabel()
        label.text = "Между картами"
        label.font = .systemFont(ofSize: 13, weight: .regular)
        label.textColor = .black
        return label
    }()
    
    private let transferButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 20.0
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupLayer()
        self.setupTransferUI()
    }
    
    private func setupLayer() {
        self.backgroundColor = Colors.greyCol
        self.layer.cornerRadius = 20.0
    }
    
    private func setupTransferUI() {
        self.setSubviews()
        self.setConstraints()
    }
    
    private func setSubviews() {
        self.addSubview(transferIcon)
        self.addSubview(transferLabel)
        self.addSubview(transferButton)
    }
    
    private func setConstraints() {
        
        transferIcon.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(16)
            make.leading.equalTo(self.snp.leading).offset(16)
            make.size.equalTo(CGSize(width: 32, height: 32))
        }
        
        transferLabel.snp.makeConstraints { make in
            make.top.equalTo(self.transferIcon.snp.bottom).offset(8)
            make.leading.equalTo(self.transferIcon.snp.leading)
            make.bottom.equalTo(self.snp.bottom).offset(-16)
        }
        
        transferButton.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top)
            make.leading.equalTo(self.snp.leading)
            make.trailing.equalTo(self.snp.trailing)
            make.bottom.equalTo(self.snp.bottom)
            make.width.equalTo(self.snp.width)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Main Controller

final class P2PViewController: UIViewController {
    
    private let headView = HeaderView()
    private let receiverView = ReceiverView()
    private let transferView = TransferView()
    
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .semibold)
        label.text = "Перевод"
        label.textColor = .black
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        
        self.setupUI()
        self.dismissKey()
    }
    
    private func setupUI() {
        self.setSubviews()
        self.setConstraints()
    }
    
    private func setSubviews() {
        self.view.addSubview(headerLabel)
        self.view.addSubview(headView)
        self.view.addSubview(receiverView)
        self.view.addSubview(transferView)
    }
    
    private func setConstraints() {
        
        headerLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(30)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        headView.snp.makeConstraints { make in
            make.top.equalTo(self.headerLabel.snp.bottom).offset(24)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(16)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).offset(-16)
            make.height.equalTo(56)
        }
        
        receiverView.snp.makeConstraints { make in
            make.top.equalTo(self.headView.snp.bottom).offset(16)
            make.leading.equalTo(self.view.snp.leading).offset(16)
            make.size.equalTo(CGSize(width: 163, height: 88))
        }
        
        transferView.snp.makeConstraints { make in
            make.top.equalTo(self.headView.snp.bottom).offset(16)
            make.trailing.equalTo(self.view.snp.trailing).offset(-16)
            make.size.equalTo(CGSize(width: 163, height: 88))
        }
    }
    
    // MARK: - Methods
    
    private func dismissKey() {
          let tap: UITapGestureRecognizer = UITapGestureRecognizer( target: self, action: #selector(dismissKeyboard))
          tap.cancelsTouchesInView = false
          self.view.addGestureRecognizer(tap)
      }

      @objc func dismissKeyboard() {
          self.view.endEditing(true)
          self.resignFirstResponder()
      }
}

