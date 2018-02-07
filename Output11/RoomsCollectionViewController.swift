//
//  RoomsCollectionViewController.swift
//  Output11
//
//  Created by Victor Idongesit on 29/11/2017.
//  Copyright © 2017 Victor Idongesit. All rights reserved.
//

import UIKit

private let reuseIdentifier = "RoomCell"

class RoomsCollectionViewController: UICollectionViewController {
    var rooms = [Room]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadRooms()
        let layout = self.collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsetsMake(0, 5, 0, 5)
        layout.minimumInteritemSpacing = 5
        layout.itemSize = CGSize(width: (self.collectionView!.frame.size.width - 20)/2,
                                 height: self.collectionView!.frame.size.height / 4)
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


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return rooms.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? RoomCollectionViewCell else {
            fatalError("Cell is not an instance of a RoomCollectionViewCell")
        }
        let room = rooms[indexPath.row]
        cell.roomImage.image = room.image
        cell.roomName.text = room.name
        cell.roomPrice.text = room.cost
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
    private func loadRooms() {
        let noWallsImage = UIImage(named: "nowalls")
        let oo7Image = UIImage(named: "007")
        let presidentialImage = UIImage(named: "presidential")
        let honeymoonImage = UIImage(named: "honeymoon")
        let homelyImage = UIImage(named: "homely")
        let skyviewImage = UIImage(named: "skyview")
        let carribeanImage = UIImage(named: "carribean")
        let dualImage = UIImage(named: "dual")
        let poshImage = UIImage(named: "posh")
        let poolsideImage = UIImage(named: "poolside")
        
        guard let noWallsRoom = Room(name: "Room Without Walls", image: noWallsImage!, cost: "$500/Night") else {
            fatalError("Could not create room")
        }
        guard let spyRoom = Room(name: "Spy Room", image: oo7Image!, cost: "$150/Night") else {
            fatalError("Could not create room")
        }
        guard let presidentialRoom = Room(name: "Presidential Suite", image: presidentialImage!, cost: "$450/Night") else {
            fatalError("Could not create room")
        }
        guard let honeymoonRoom = Room(name: "Newly Weds", image: honeymoonImage!, cost: "$190/Night") else {
            fatalError("Could not create room")
        }
        guard let homelyRoom = Room(name: "The Homely Suite", image: homelyImage!, cost: "$200/Night") else {
            fatalError("Could not create room")
        }
        guard let skyviewRoom = Room(name: "Skyview Room", image: skyviewImage!, cost: "$700/Night") else {
            fatalError("Could not create room")
        }
        guard let carribeanRoom = Room(name: "The Carribean Suite", image: carribeanImage!, cost: "$220/Night") else {
            fatalError("Could not create room")
        }
        guard let dualRoom = Room(name: "For Just Friends", image: dualImage!, cost: "$400/Night") else {
            fatalError("Could not create room")
        }
        guard let poshRoom = Room(name: "The Posh Suite", image: poshImage!, cost: "$500/Night") else {
            fatalError("Could not create room")
        }
        guard let poolSideRoom = Room(name: "Room by the Pool", image: poolsideImage!, cost: "$500/Night") else {
            fatalError("Could not create room")
        }
        rooms += [noWallsRoom, spyRoom, presidentialRoom, honeymoonRoom, homelyRoom, skyviewRoom, carribeanRoom, dualRoom, poshRoom, poolSideRoom]
    }

}
