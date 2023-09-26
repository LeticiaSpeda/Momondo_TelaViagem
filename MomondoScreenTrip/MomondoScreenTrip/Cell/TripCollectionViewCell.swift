import UIKit

final class tripCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: tripCollectionViewCell.self)
    
    private lazy var tripImage: UIImageView = {
        let img = UIImage.maldivas
        let view = UIImageView(image: img)
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.contentMode = .scaleAspectFill
        view.translate()
        return view
    }()
    
    private lazy var tripView: UIView = {
        let view = UIView()
        view.backgroundColor = .black.withAlphaComponent(0.3)
        view.translate()
        return view
    }()
    
    private lazy var mostPopularLabel: UILabel = {
        let label = UILabel()
        label.text = " Mais popular "
        label.textColor = .white
        label.backgroundColor = #colorLiteral(red: 0.2538110912, green: 0.5731842518, blue: 0.7796986103, alpha: 1)
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.font = .boldSystemFont(ofSize: 16)
        label.translate()
        return label
    }()
    
    private lazy var countryLabel = {
        let label = UILabel()
        label.text = "Luqa"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 18)
        label.translate()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureHierarchy()
        configureContraints()
    }
    
    required init?(coder: NSCoder) { nil }
    
    private func configureHierarchy() {
        contentView.addSubview(tripImage)
        tripImage.addSubview(tripView)
        tripView.addSubview(mostPopularLabel)
        tripView.addSubview(countryLabel)
    }
    
    private func configureContraints() {
        NSLayoutConstraint.activate([
            tripImage.topAnchor.constraint(
                equalTo: contentView.topAnchor
            ),
            tripImage.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor
            ),
            tripImage.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor
            ),
            tripImage.bottomAnchor.constraint(
                equalTo: contentView.bottomAnchor
            ),
            
            tripView.topAnchor.constraint(
                equalTo: tripImage.topAnchor
            ),
            tripView.leadingAnchor.constraint(
                equalTo: tripImage.leadingAnchor
            ),
            tripView.trailingAnchor.constraint(
                equalTo: tripImage.trailingAnchor
            ),
            tripView.bottomAnchor.constraint(
                equalTo: tripImage.bottomAnchor
            ),
            
            
            mostPopularLabel.topAnchor.constraint(
                equalTo: tripView.topAnchor,
                constant: 10
            ),
            mostPopularLabel.leadingAnchor.constraint(
                equalTo: tripView.leadingAnchor,
                constant: 10
            ),
            
            countryLabel.bottomAnchor.constraint(
                equalTo: tripView.bottomAnchor,
                constant: -10
            ),
            countryLabel.leadingAnchor.constraint(
                equalTo: tripView.leadingAnchor,
                constant: 10
            ),
        ])
    }
}

