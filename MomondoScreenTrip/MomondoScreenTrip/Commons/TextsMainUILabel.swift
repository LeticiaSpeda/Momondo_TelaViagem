import UIKit

final class TextsMainUILabel: UILabel {
    
    var textMain: String
    var styleFont: UIFont
    var colorText: UIColor
    
    init(textMain: String, styleFont: UIFont!, colorText: UIColor) {
        self.textMain = textMain
        self.styleFont = styleFont
        self.colorText = colorText
        super.init(frame: .zero)
        configuteStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configuteStyle() {
        text = textMain
        font = styleFont
        textColor = colorText
        translate()
    }
    
}
