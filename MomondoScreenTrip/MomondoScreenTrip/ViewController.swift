import UIKit

final class ViewController: UIViewController {
    
    //MARK: - Properties
    private lazy var mainVStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 15
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var secondVStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 15
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var lookingLowValuesLabel: UILabel = {
        let label = UILabel()
        label.text = "Procurandos valores baixos..."
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = .white.withAlphaComponent(0.5)
        return label
    }()
    
    private lazy var viewLookingLow: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2289779186, green: 0.09466151148, blue: 0.3955129981, alpha: 1)
        return view
    }()
    
    private lazy var destinationsLabel: UILabel = {
        let label = UILabel()
        label.text = "Principais destinos"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .white.withAlphaComponent(0.5)
        return label
    }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1174478158, green: 0.02265601605, blue: 0.2253929079, alpha: 1)
        commonInit()
    }
    
    @objc func handleBack() {
        print("Ok")
    }
    
    //MARK: - Helpers
    private func commonInit() {
        configureHierarchy()
        configureConstraints()
        configureStyle()
    }
    
    private func configureHierarchy() {
        view.addSubview(mainVStack)
        
        mainVStack.addArrangedSubview(lookingLowValuesLabel)
        mainVStack.addArrangedSubview(viewLookingLow)
        mainVStack.addArrangedSubview(UIView())
        
        viewLookingLow.addSubview(secondVStack)
        secondVStack.addArrangedSubview(destinationsLabel)
        secondVStack.addArrangedSubview(UIView())
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            mainVStack.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 8
            ),
            mainVStack.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 8
            ),
            mainVStack.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -8
            ),
            mainVStack.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -8
            ),
            
            viewLookingLow.heightAnchor.constraint(equalToConstant: 200),
            
            secondVStack.topAnchor.constraint(
                equalTo: viewLookingLow.topAnchor,
                constant: 8
            ),
            secondVStack.leadingAnchor.constraint(
                equalTo: viewLookingLow.leadingAnchor,
                constant: 8
            ),
            secondVStack.trailingAnchor.constraint(
                equalTo: viewLookingLow.trailingAnchor,
                constant: -8
            ),
            secondVStack.bottomAnchor.constraint(
                equalTo: viewLookingLow.bottomAnchor,
                constant: -8
            ),
        ])
    }
    
    private func configureStyle() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = #colorLiteral(red: 0.1174478158, green: 0.02265601605, blue: 0.2253929079, alpha: 1)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationItem.title = "Malta"
        navigationItem.leftBarButtonItem = .init(
            image: .init(systemName: "chevron.left"),
            style: .plain,
            target: self,
            action: #selector(handleBack)
        )
        navigationItem.rightBarButtonItem = .init(
            image: .init(systemName: "ellipsis"),
            style: .plain,
            target: self,
            action: #selector(handleBack)
        )
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}
