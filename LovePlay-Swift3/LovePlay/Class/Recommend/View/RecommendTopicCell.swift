//
//  RecommendTopicCell.swift
//  LovePlay
//
//  Created by Yuns on 2017/5/22.
//  Copyright © 2017年 yuns. All rights reserved.
//

import UIKit

class RecommendTopicCell: UICollectionViewCell {
    
    class func cellWithCollectionView(collectionView : UICollectionView, indexPath: IndexPath) -> RecommendTopicCell {
        
        let ID = NSStringFromClass(self)
        let cell : RecommendTopicCell? = collectionView.dequeueReusableCell(withReuseIdentifier: ID, for: indexPath) as? RecommendTopicCell

        return cell!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubViews()
        self.snp_subViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - private
    private func addSubViews() {
        self.contentView.addSubview(self.topicImgView)
        self.contentView.addSubview(self.topicTextLabel)
    }
    
    private func snp_subViews() {
        topicImgView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(2)
            make.right.equalToSuperview().offset(-2)
            make.height.equalTo(topicImgView.snp.width)
        }
        
        topicTextLabel.snp.makeConstraints { (make) in
            make.top.equalTo(topicImgView.snp.bottom).offset(8)
            make.left.right.equalToSuperview()
        }
    }
    
    fileprivate var _topicModel : RecommendTopicModel?
    var topicModel : RecommendTopicModel? {
        set {
            _topicModel = newValue
            let imgURL = URL(string: (newValue?.iconUrl)!)
            self.topicImgView.kf.setImage(with: imgURL)
            
            self.topicTextLabel.text = newValue?.topicName
        }
        
        get {
            return _topicModel
        }
    }
    
    // MARK: - lazy load
    lazy var topicImgView : UIImageView = {
        let topicImgView = UIImageView()
        return topicImgView
    }()
    
    lazy var topicTextLabel : UILabel = {
        let topicTextLabel = UILabel()
        topicTextLabel.font = UIFont.systemFont(ofSize: 12)
        topicTextLabel.textColor = RGB(r: 36.0, g: 36.0, b: 36.0)
        topicTextLabel.textAlignment = NSTextAlignment.center
        return topicTextLabel
    }()
}
