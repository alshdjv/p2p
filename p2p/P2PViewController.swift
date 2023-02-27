import UIKit
import SnapKit

struct Colors {
    static let greyCol = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
}

struct BankInfo {
    let clientName: String?
    let clientCard: String?
    let bankImage: String?
}

struct IconInfo {
    let iconImg: String?
}

// MARK: - HeaderView

final class HeaderView: UIView {

    private let cardIcon: UIImageView = {
        let image = UIImage(named: "cardImg")
        let imageView = UIImageView(image: image?.withRenderingMode(.alwaysOriginal))
        imageView.clipsToBounds = true
        return imageView
    }()
    
    public var cardTextField: UITextField = {
        let textField = UITextField()
        textField.autocorrectionType = .no
        textField.placeholder = "Введите номер карты"
        textField.font = .systemFont(ofSize: 17)
        textField.becomeFirstResponder()
        textField.clearButtonMode = .whileEditing
        textField.keyboardType = .decimalPad
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
        self.addSubview(cardTextField)
        self.cardTextField.addSubview(cardIcon)
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
            make.trailing.equalTo(self.snp.trailing).offset(-14)
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

// MARK: - Transfer View

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

// MARK: - TableViewCell

final class P2PTableViewCell: UITableViewCell {
    
    static let identifier = "P2PTableViewCell"
    
    private let bankIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    private let cardLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13, weight: .regular)
        label.textColor = .secondaryLabel
        return label
    }()
    
    private let middleStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .leading
        stackView.spacing = 4
        return stackView
    }()
    
    private let deleteButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "cardDeleteImg")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    // Observers
    var bankItem: BankInfo? {
        didSet {
            guard let bankItem = bankItem else {return}
                    
            if let name = bankItem.clientName {
                nameLabel.text = "\(name)"
            }
                        
            if let card = bankItem.clientCard {
                cardLabel.text = "\(card)"
            }
                
            if let avatar = bankItem.bankImage {
                bankIcon.image = UIImage(named: avatar)?.withRenderingMode(.alwaysOriginal)
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = .systemBackground
        
        if self.selectedBackgroundView == nil {
            self.selectedBackgroundView = UIView()
        }
        
        self.setupCellUI()
    }
    
    private func setupCellUI() {
        self.setSubviews()
        self.setConstraints()
    }
    
    private func setSubviews() {
        self.addSubview(bankIcon)
        self.middleStackView.addArrangedSubview(nameLabel)
        self.middleStackView.addArrangedSubview(cardLabel)
        self.addSubview(middleStackView)
        self.addSubview(deleteButton)
    }
    
    private func setConstraints() {
        
        bankIcon.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(8)
            make.leading.equalTo(self.snp.leading).offset(16)
            make.bottom.equalTo(self.snp.bottom).offset(-8)
            make.size.equalTo(CGSize(width: 48, height: 48))
        }
        
        middleStackView.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(12)
            make.leading.equalTo(self.bankIcon.snp.trailing).offset(12)
            make.bottom.equalTo(self.snp.bottom).offset(-12)
        }
        
        deleteButton.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(24)
            make.trailing.equalTo(self.snp.trailing).offset(-16)
            make.bottom.equalTo(self.snp.bottom).offset(-24)
            make.size.equalTo(CGSize(width: 16, height: 16))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Main Controller

final class P2PViewController: UIViewController {
    
    enum ChainCard {
        case activeCard
        case inactiveCard
    }
    
    var cellData = [
        BankInfo(clientName: "Alisher Djuraev", clientCard: "8600 31** **** 3593", bankImage: "aloqaImg"),
        BankInfo(clientName: "Fazliddin Murtazoev", clientCard: "8600 31** **** 4422", bankImage: "agroImg"),
        BankInfo(clientName: "Malika Tolqinova", clientCard: "8600 31** **** 2332", bankImage: "asakaImg"),
        BankInfo(clientName: "Mukhammadyor Juraev", clientCard: "8600 31** **** 1111", bankImage: "hamkorImg"),
        BankInfo(clientName: "Stanislav Tsoy", clientCard: "8600 32** **** 1234", bankImage: "hitechImg"),
        BankInfo(clientName: "Botir Ruziboev", clientCard: "8600 44** **** 4444", bankImage: "infinImg"),
        BankInfo(clientName: "Valera Pak", clientCard: "8600 34** **** 1112", bankImage: "ipakyoliImg"),
        BankInfo(clientName: "Dilmurod Rikhsiboev", clientCard: "8600 31** **** 2345", bankImage: "ipotekaImg"),
        BankInfo(clientName: "Komoliddin Avazov", clientCard: "8600 31** **** 3234", bankImage: "kapitalImg"),
        BankInfo(clientName: "Elyor Jumaev", clientCard: "8600 44** **** 4565", bankImage: "kdbImg"),
        BankInfo(clientName: "Vladimir Kim", clientCard: "8600 33** **** 5555", bankImage: "nbuImg"),
        BankInfo(clientName: "Zarina Yuldasheva", clientCard: "8600 31** **** 7777", bankImage: "orientfinansImg"),
        BankInfo(clientName: "Kimberly Kardashian", clientCard: "8600 31** **** 9999", bankImage: "qishloqqurilishImg"),
        BankInfo(clientName: "Aleksey Voronin", clientCard: "8600 44** **** 2133", bankImage: "savdogarImg"),
        BankInfo(clientName: "Zukhra Hasanovna", clientCard: "8600 33** **** 2333", bankImage: "sqbImg"),
        BankInfo(clientName: "Aziz Asadov", clientCard: "8600 31** **** 7557", bankImage: "trastImg"),
        BankInfo(clientName: "Shakhlo Sarvarova", clientCard: "8600 33** **** 4455", bankImage: "turkistonImg"),
        BankInfo(clientName: "Nigora Agzamovna", clientCard: "8600 31** **** 3333", bankImage: "turonImg"),
        BankInfo(clientName: "Rustam Fakhriddinov", clientCard: "8600 44** **** 2454", bankImage: "universalImg"),
        BankInfo(clientName: "Shoxrux Qodirov", clientCard: "8600 31** **** 3444", bankImage: "xalqImg"),
        BankInfo(clientName: "Rihanna Fenty", clientCard: "8600 33** **** 9999", bankImage: "ziraatImg")
    ]
    
    var iconArray = [
        IconInfo(iconImg: "aloqaImg"),
        IconInfo(iconImg: "agroImg"),
        IconInfo(iconImg: "asakaImg"),
        IconInfo(iconImg: "hamkorImg"),
        IconInfo(iconImg: "hitechImg"),
        IconInfo(iconImg: "infinImg"),
        IconInfo(iconImg: "ipakyoliImg"),
        IconInfo(iconImg: "ipotekaImg"),
        IconInfo(iconImg: "kapitalImg"),
        IconInfo(iconImg: "kdbImg"),
        IconInfo(iconImg: "nbuImg"),
        IconInfo(iconImg: "orientfinansImg"),
        IconInfo(iconImg: "qishloqqurilishImg"),
        IconInfo(iconImg: "savdogarImg"),
        IconInfo(iconImg: "sqbImg"),
        IconInfo(iconImg: "trastImg"),
        IconInfo(iconImg: "turkistonImg"),
        IconInfo(iconImg: "turonImg"),
        IconInfo(iconImg: "universalImg"),
        IconInfo(iconImg: "xalqImg"),
        IconInfo(iconImg: "ziraatImg")
    ]
    
    var filteredCellData: [BankInfo] = []
    var searching: Bool = false
    
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .semibold)
        label.text = "Перевод"
        label.textColor = .black
        return label
    }()
    
    private let headView = HeaderView()
    private let receiverView = ReceiverView()
    private let transferView = TransferView()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.register(P2PTableViewCell.self, forCellReuseIdentifier: P2PTableViewCell.identifier)
        return tableView
    }()
    
    // If the card is not in a table cell
    /////////////////////////////////////////////////
    
    private let cardIsEmpty: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 213/255, green: 213/255, blue: 214/255, alpha: 1.0)
        view.layer.cornerRadius = 20.0
        view.isHidden = true
        return view
    }()
    
    private let cardNotFound: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .semibold)
        label.text = "Карта не найдена"
        label.textColor = .white
        return label
    }()
  
    // MARK: - Init viewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
    
        headView.cardTextField.addTarget(self, action: #selector(txtValueChanged(_ :)), for: .editingChanged)
        
        self.setupUI()
        self.dismissKey()
        self.setupTableView()
    }
    
    @objc func txtValueChanged(_ sender: UITextField) {
        
        if sender.text?.count == 0 {
            self.receiverView.isHidden = false
            self.transferView.isHidden = false
            self.filteredCellData = self.cellData
        } else {
            self.receiverView.isHidden = true
            self.transferView.isHidden = true
            guard let searchText  = sender.text else { return }
            
            filteredCellData = self.cellData.filter({(($0.clientCard!).localizedCaseInsensitiveContains(searchText))})
        }
        
        
        if (filteredCellData.count == 0) {
            configure(state: .activeCard)
            searching = false
        } else {
            configure(state: .inactiveCard)
            searching = true
        }
        
        self.tableView.reloadData()
    }
    
    private func setupTableView() {
        tableView.separatorStyle = .none
        tableView.separatorColor = .clear
        tableView.showsVerticalScrollIndicator = false
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    private func setupUI() {
        self.setSubviews()
        self.setConstraints()
    }
    
    private func setSubviews() {
        self.view.addSubview(headerLabel)
        self.view.addSubview(headView)
        self.stackView.addArrangedSubview(receiverView)
        self.stackView.addArrangedSubview(transferView)
        self.view.addSubview(stackView)
        self.view.addSubview(tableView)
        
        self.view.addSubview(cardIsEmpty)
        self.cardIsEmpty.addSubview(cardNotFound)
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
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(self.headView.snp.bottom).offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        receiverView.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 163, height: 88))
        }

        transferView.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 163, height: 88))
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(self.stackView.snp.bottom).offset(24)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        // tableviewcell doens't contain card number
        cardIsEmpty.snp.makeConstraints { make in
            make.top.equalTo(self.headView.snp.bottom).offset(24)
            make.leading.equalTo(self.view.snp.leading).offset(16)
            make.trailing.equalTo(self.view.snp.trailing).offset(-16)
            make.height.equalTo(88)
        }
        
        cardNotFound.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.centerX.equalTo(self.cardIsEmpty.snp.centerX)
            make.centerY.equalTo(self.cardIsEmpty.snp.centerY)
        }
    }
    
    // MARK: - Main Controller Methods
    
    public func configure(state: ChainCard) {
        switch state {
        case .activeCard:
            cardIsEmpty.isHidden = false
            tableView.isHidden = true
        case .inactiveCard:
            cardIsEmpty.isHidden = true
            tableView.isHidden = false
        }
    }
    
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

// MARK: - Main Controller Extension

extension P2PViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return filteredCellData.count
        } else {
            return cellData.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: P2PTableViewCell.identifier, for: indexPath) as? P2PTableViewCell else {
            return UITableViewCell()
        }
        if ( searching == true) {
            cell.bankItem = filteredCellData[indexPath.row]
        } else {
            cell.bankItem = cellData[indexPath.row]
        }
        return cell
    }
}


