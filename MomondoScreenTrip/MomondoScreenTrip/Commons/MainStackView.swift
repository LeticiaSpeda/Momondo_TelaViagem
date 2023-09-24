import UIKit

final class MainStackView: UIStackView {
    
    var space: CGFloat
    var direction:  NSLayoutConstraint.Axis
    
    init(space: CGFloat, direction: NSLayoutConstraint.Axis) {
        self.space = space
        self.direction = direction
        super.init(frame: .zero)
        configureStyle()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureStyle() {
        axis = direction
        spacing = space
        translate()
    }
    
}
