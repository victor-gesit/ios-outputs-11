//
//  RoomPartCollectionViewController.swift
//  Output11
//
//  Created by Victor Idongesit on 30/11/2017.
//  Copyright © 2017 Victor Idongesit. All rights reserved.
//

import UIKit

private let reuseIdentifier = "RoomPartCell"

class RoomPartCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var roomParts = [RoomPart]()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        loadRoomParts()
        collectionView.dataSource = self
        collectionView.delegate = self
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        // self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return roomParts.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? RoomPartCollectionViewCell else {
            fatalError("Cell is not instance of RoomPartCollectionViewCell")
        }
        
        // Configure the cell
        let roomPart = roomParts[indexPath.row]
        cell.roomPartImage.image = roomPart.roomPartImage
        cell.roomPartName.text = roomPart.roomPartName
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    //MARK: Private Methods
    private func loadRoomParts() {
        let patioImage = UIImage(named: "patio")
        let jacuzziImage = UIImage(named: "jacuzzi")
        let saunaImage = UIImage(named: "sauna")
        let kitchenImage = UIImage(named: "kitchen")
        //initialize
        guard let kitchen = RoomPart(roomPartName: "Kitchen", roomPartImage: kitchenImage!) else {
            fatalError("Could not create room part")
        }
        guard let patio = RoomPart(roomPartName: "Patio", roomPartImage: patioImage!) else {
            fatalError("Could not create room part")
        }
        guard let jacuzzi = RoomPart(roomPartName: "Jacuzzi", roomPartImage: jacuzziImage!) else {
            fatalError("Could not create room part")
        }
        guard let sauna = RoomPart(roomPartName: "Sauna", roomPartImage: saunaImage!) else {
            fatalError("Could not create room part")
        }
        roomParts += [kitchen, patio, jacuzzi, sauna]
    }

}
