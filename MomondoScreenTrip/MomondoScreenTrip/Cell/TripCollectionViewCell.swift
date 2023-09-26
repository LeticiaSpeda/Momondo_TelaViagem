import UIKit

final class tripCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: tripCollectionViewCell.self)
    
    private lazy var tripImage: UIImageView = {
        let img = UIImage.maldivas
        let view = UIImageView(image: img)
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.contentMode = .scaleAspectFit
        view.translate()
        return view
    }()
    
    init() {
        configureHierarchy()
        configureContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureHierarchy() {
        contentView.addSubview(tripImage)
    }
    
    private func configureContraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
}
