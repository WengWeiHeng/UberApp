//
//  MenuHeader.swift
//  UberApp
//
//  Created by Heng on 2020/4/21.
//  Copyright © 2020 Heng. All rights reserved.
//

import UIKit

class MenuHeader: UIView{
    
    //MARK: - Properties    
    private let user: User
    
    private lazy var profileImageview: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        
        view.addSubview(initialLabel)
        initialLabel.centerX(inView: view)
        initialLabel.centerY(inView: view)
        
        return view
    }()
    
    private lazy var initialLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 42)
        label.textColor = .white
        label.text = user.firstInitial
        
        return label
    }()
    
    private lazy var fullnameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .white
        label.text = "Wataru Weng"
        label.text = user.fullname
        
        return label
    }()
    
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        label.text = "text@gmail.com"
        label.text = user.email
        
        return label
    }()
    
    //MARK: - Init
    init(user: User, frame: CGRect){
        self.user = user
        super.init(frame: frame)
        
        backgroundColor = .backgroundColor
        
        addSubview(profileImageview)
        profileImageview.anchor(top: topAnchor, left: leftAnchor, paddingTop: 4, paddingLeft: 12, width: 64, height: 64)
        profileImageview.layer.cornerRadius = 64 / 2
        
        let stack = UIStackView(arrangedSubviews: [fullnameLabel, emailLabel])
        stack.distribution = .fillEqually
        stack.spacing = 4
        stack.axis = .vertical
        
        addSubview(stack)
        stack.centerY(inView: profileImageview, leftAnchor: profileImageview.rightAnchor, paddingLeft: 12)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARL: - Selectors
    
}
