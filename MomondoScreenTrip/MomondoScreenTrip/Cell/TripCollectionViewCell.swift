import UIKit

final class tripCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: tripCollectionViewCell.self)
    
    private lazy var tripImage: UIImageView = {
        let img = UIImage(named: "maldivas")
        let view = UIImageView(image: img)
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.contentMode = .scaleAspectFit
        view.translate()
        return view
    }()
    
    init() {
        configureContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureContraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
}
