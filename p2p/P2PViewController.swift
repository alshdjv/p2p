import UIKit
import SnapKit

final class P2PViewController: UIViewController {
    
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
    }
    
    private func setupUI() {
        self.setSubviews()
        self.setConstraints()
    }
    
    private func setSubviews() {
        self.view.addSubview(headerLabel)
    }
    
    private func setConstraints() {
        
        headerLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(59)
            make.leading.equalToSuperview().offset(148)
            make.trailing.equalToSuperview().offset(148)
        }
    }
}

