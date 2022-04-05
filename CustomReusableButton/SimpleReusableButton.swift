//
//  SimpleReusableButton.swift
//  SimpleReusableButton
//
//  Created by Nilesh Kumar on 05/04/22.
//

import UIKit

struct ButtonModel{
    let primaryText: String
    let secondaryText: String
}

class SimpleReusableButton: UIButton {
    
    private let primaryLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18.0, weight: .bold)
        label.textAlignment = .center
        
        return label
    }()
    
    private let secondaryLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 14.0, weight: .medium)
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(primaryLabel)
        addSubview(secondaryLabel)
        backgroundColor = .green
        layer.cornerRadius = 8.0
        layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        primaryLabel.frame = CGRect(x: 5, y: 5, width: frame.size.width - 10, height: (frame.size.height / 2) - 10)
        secondaryLabel.frame = CGRect(x: 5, y: (frame.size.height / 2), width: frame.size.width - 10, height: (frame.size.height / 2) - 5)
    }

    public func config(with model: ButtonModel){
        primaryLabel.text = model.primaryText
        secondaryLabel.text = model.secondaryText
    }
}

struct AnotherButtonModel
{
    let primaryText: String
    let textImage: UIImage?
    let backgroundColor: UIColor?
}


class AnotherReusableButton: UIButton{
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18.0, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    private let myImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.tintColor = .white
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        layer.cornerRadius = 8.0
        layer.masksToBounds = true
        addSubview(textLabel)
        addSubview(myImage)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
       
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let iconSize = 28.0
        textLabel.sizeToFit()
        let xPosition = (frame.size.width - iconSize - textLabel.frame.size.width - 5) / 2
        myImage.frame = CGRect(x: xPosition, y: (frame.size.height - iconSize) / 2, width: iconSize, height: iconSize)
        textLabel.frame = CGRect(x: iconSize + xPosition + 10, y: 0, width: textLabel.frame.size.width, height: frame.size.height)
    }
    
    public func config(with model: AnotherButtonModel){
        textLabel.text = model.primaryText
        myImage.image = model.textImage
        backgroundColor = model.backgroundColor
    }
    
}
