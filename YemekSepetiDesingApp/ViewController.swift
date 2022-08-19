//
//  ViewController.swift
//  YemekSepetiDesingApp
//
//  Created by Berkay on 19.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var reklamCollectionView: UICollectionView!
    @IBOutlet weak var populerCollectionView: UICollectionView!
    @IBOutlet weak var MarketTableView: UITableView!
    
    var imageList = [ReklamGorsel]()
    var populerImageList = [PopularGorsel]()
    var marketImageList = [MarketGorsel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        reklamCollectionView.delegate = self
        reklamCollectionView.dataSource = self
        
        populerCollectionView.delegate = self
        populerCollectionView.dataSource = self
        
        MarketTableView.delegate = self
        MarketTableView.dataSource = self
        
        imageList.append(ReklamGorsel(reklamId: 1, reklamImage: "4"))
        imageList.append(ReklamGorsel(reklamId: 2, reklamImage: "3"))
        imageList.append(ReklamGorsel(reklamId: 3, reklamImage: "2"))
        imageList.append(ReklamGorsel(reklamId: 4, reklamImage: "1"))
        
        populerImageList.append(PopularGorsel(poplerId: 1, popularImage: "1-1", populerTitle: "Market, Çeliktepe", populerPrice: "40,00 ₺", populerIsFree: "Ücretsiz Teslimat"))
        populerImageList.append(PopularGorsel(poplerId: 2, popularImage: "2-1", populerTitle: "Arslan Pet Shop", populerPrice: "400,00 ₺ min.", populerIsFree: "Ücretsiz Teslimat"))
        populerImageList.append(PopularGorsel(poplerId: 3, popularImage: "3-1", populerTitle: "ASSU", populerPrice: "50,00 ₺ min.", populerIsFree: "Ücretsiz Teslimat"))
        populerImageList.append(PopularGorsel(poplerId: 4, popularImage: "4-1", populerTitle: "4 Mevsim Manav", populerPrice: "150,00 ₺", populerIsFree: "Ücretsiz Teslimat"))
        
        marketImageList.append(MarketGorsel(marketId: 1, marketImageView: "M-1", marketTitle: "Yemeksepeti Market, Şehit T...", marketPrice: "40.00 ₺ min.", marketLimit: "140,00 ₺ Üzeri Ücretsiz Gönderim", marketIsFree: "Ücretsiz Teslimat"))
        marketImageList.append(MarketGorsel(marketId: 2, marketImageView: "M-2", marketTitle: "Arslan Pet Shop", marketPrice: "400,00 ₺ min.", marketLimit: "149,99 ₺ Üzeri Ücretsiz Gönderim", marketIsFree: "Ücretsiz Teslimat"))
        marketImageList.append(MarketGorsel(marketId: 3, marketImageView: "M-3", marketTitle: "Karmar Manav & Market", marketPrice: "40.00 ₺ min. sepet tutari", marketLimit: "140,00 ₺ Üzeri Ücretsiz Gönderim", marketIsFree: "Ücretsiz Teslimat"))
        marketImageList.append(MarketGorsel(marketId: 4, marketImageView: "M-4", marketTitle: "Baltaci Market", marketPrice: "40.00 ₺ min. sepet tutari", marketLimit: "160,00 ₺ Üzeri Ücretsiz Gönderim", marketIsFree: "Ücretsiz Teslimat"))
        marketImageList.append(MarketGorsel(marketId: 5, marketImageView: "M-5", marketTitle: "Assu", marketPrice: "50.00 TL min. sepet tutar", marketLimit: "80,99 ₺ Üzeri Ücretsiz Gönderim", marketIsFree: "Ücretsiz Teslimat"))
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.scrollDirection = .horizontal
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        tasarim.minimumLineSpacing = 5
        tasarim.minimumInteritemSpacing = 5
        let genislik = populerCollectionView.frame.size.width
//        let hucreGenislik = ( genislik - 30) / 2
        tasarim.itemSize = CGSize(width: 290, height: 210)
        populerCollectionView.collectionViewLayout = tasarim
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case reklamCollectionView:
            return imageList.count
        case populerCollectionView:
            return populerImageList.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case reklamCollectionView:
            let image = imageList[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reklamHucre", for: indexPath) as! CollectionViewCell
            cell.imageView.image = UIImage(named: image.reklamImage!)
            return cell
        case populerCollectionView:
            let popularImage = populerImageList[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "populerHucre", for: indexPath) as! PopulerCollectionViewCell
            cell.imageView.image = UIImage(named: popularImage.popularImage!)
            cell.labelTitle.text = popularImage.populerTitle
            cell.labelPrice.text = popularImage.populerPrice
            cell.butonIsFree.titleLabel?.text = popularImage.populerIsFree
            return cell
        default:
            return UICollectionViewCell()
        }
  
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return marketImageList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let market = marketImageList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "marketHucre", for: indexPath) as! MarketTableViewCell
        cell.MarketImageView.image = UIImage(named: market.marketImageView!)
        cell.labelTitle.text = market.marketTitle
        cell.labelPrice.text = market.marketPrice
        cell.labelLimit.text = market.marketLimit
        cell.butonIsFree.titleLabel?.text = market.marketIsFree
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
    

}
