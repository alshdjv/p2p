import UIKit
import SnapKit

struct Colors {
    static let greyCol = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
}

final class P2PViewController: UIViewController {
    
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .semibold)
        label.text = "Перевод"
        label.textColor = .black
        return label
    }()
    
    // TOP PART
    private let headView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.greyCol
        view.layer.cornerRadius = 16.0
        return view
    }()
    
    private let cardIcon: UIImageView = {
        let image = UIImage(named: "cardImg")
        let imageView = UIImageView(image: image?.withRenderingMode(.alwaysOriginal))
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let cardTextField: UITextField = {
        let textField = UITextField()
        textField.autocorrectionType = .no
        textField.text = "Введите номер карты"
        textField.textColor = UIColor(red: 170/255, green: 171/255, blue: 173/255, alpha: 1.0)
        textField.font = .systemFont(ofSize: 17)
        textField.becomeFirstResponder()
        return textField
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
        self.headView.addSubview(cardIcon)
        self.headView.addSubview(cardTextField)
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
        
        cardIcon.snp.makeConstraints { make in
            make.top.equalTo(self.headView.snp.top).offset(16)
            make.leading.equalTo(self.headView.snp.leading).offset(20)
            make.bottom.equalTo(self.headView.snp.bottom).offset(-16)
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        
        cardTextField.snp.makeConstraints { make in
            make.top.equalTo(self.headView.snp.top).offset(18)
            make.leading.equalTo(self.cardIcon.snp.trailing).offset(14)
            make.bottom.equalTo(self.headView.snp.bottom).offset(-18)
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

