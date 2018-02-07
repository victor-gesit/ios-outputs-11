//
//  HotelsTableViewController.swift
//  Output11
//
//  Created by Victor Idongesit on 28/11/2017.
//  Copyright © 2017 Victor Idongesit. All rights reserved.
//

import UIKit

class HotelsTableViewController: UITableViewController {
    //MARK: Properties
    var hotels = [Hotel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleHotels()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotels.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // dequeue the cess as they leave the screen
        let cellIdentifier = "HotelsTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HotelsTableViewCell else {
            fatalError("The dequeued cell is not an instance of HotelsTableViewCell")
        }
        // Get the appropriate hotel to fill in the info for the next row
        let hotel = hotels[indexPath.row]
        cell.hotelName.text = hotel.name
        cell.coverPreview.image = hotel.cover
        cell.hotelAddress.text = hotel.address
        cell.hotelRating.text = hotel.rating
        cell.hotelDistanceAway.text = hotel.distanceAway
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    //MARK: Private Methods
    private func loadSampleHotels() {
        //initialize the covers
        let anugerahCover = UIImage(named: "anugerah")
        let tajCover = UIImage(named: "taj")
        let sofitelCover = UIImage(named: "sofitel")
        let galvezCover = UIImage(named: "galvez")
        
        let harbourCover = UIImage(named: "harbour")
        let hyattCover = UIImage(named: "hyatt")
        let libertyCover = UIImage(named: "liberty")
        let ballsbridgeCover = UIImage(named: "ballsbridge")
        let safariCover = UIImage(named: "safari")
        
        //initialize
        guard let anugerahHotel = Hotel(name: "Hotel Anugerah", cover: anugerahCover!, address: "Bomdowoso Indonesia", rating: "★★★★★", distanceAway: "20Km Away") else {
            fatalError("Unable to instantiate hotel")
        }
        guard let tajHotel = Hotel(name: "Taj Hotel", cover: tajCover!, address: "Cape Town, South Africa", rating: "★★★", distanceAway: "15Km Away") else {
            fatalError("Unable to instantiate hotel")
        }
        guard let sofitelHotel = Hotel(name: "Sofitel Hotel", cover: sofitelCover!, address: "1 Bankole Oki St, Ikoyi Lagos", rating: "★★★★★", distanceAway: "5Km Away") else {
            fatalError("Unable to instantiate hotel")
        }
        guard let galvezHotel = Hotel(name: "Hotel Galvez", cover: galvezCover!, address: "2024 Seawall Blvd, Galveston, TX 77550, USA", rating: "★★★★", distanceAway: "90Km Away") else {
            fatalError("Unable to instantiate hotel")
        }
        guard let harbourHotel = Hotel(name: "Harbour Hotel", cover: harbourCover!, address: "70 Oyinkan Abayomi Drive, Lagos", rating: "★★★", distanceAway: "200Km Away") else {
            fatalError("Unable to instantiate hotel")
        }
        guard let hyattHotel = Hotel(name: "Hyatt Hotel", cover: hyattCover!, address: "235 Ikorodu Road, Lagos", rating: "★★★★★", distanceAway: "119Km Away") else {
            fatalError("Unable to instantiate hotel")
        }
        guard let libertyHotel = Hotel(name: "Liberty Hotel", cover: libertyCover!, address: "Lara, Antalya", rating: "★★★★", distanceAway: "212Km Away") else {
            fatalError("Unable to instantiate hotel")
        }
        guard let ballsbridgeHotel = Hotel(name: "Ballsbridge Hotel", cover: ballsbridgeCover!, address: "Ballsbridge, Dublin", rating: "★★★★★★", distanceAway: "225Km Away") else {
            fatalError("Unable to instantiate hotel")
        }
        guard let safariHotel = Hotel(name: "Hotel Safari", cover: safariCover!, address: "40 Benue Cres, Garki, Abuja", rating: "★★★★", distanceAway: "15Km Away") else {
            fatalError("Unable to instantiate hotel")
        }
        
        hotels += [anugerahHotel, tajHotel, sofitelHotel, galvezHotel, harbourHotel, hyattHotel, libertyHotel, ballsbridgeHotel, safariHotel, anugerahHotel, tajHotel, safariHotel]
    }

}
