//
//  LocationsViewController.swift
//  Printn
//
//  Created by Ally Koo on 3/28/16.
//  Copyright © 2016 Printn. All rights reserved.
//

import UIKit

class LocationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var locationsTableView: UITableView!
    
    var locationsImages = [UIImage(named: "unit1"), UIImage(named: "unit2"), UIImage(named: "Unit3"), UIImage(named: "Foothill"), UIImage(named: "stern1"), UIImage(named: "ClarkKerr")]
    
    var locationsLabels = ["Unit One", "Unit Two", "Unit Three", "Foothill", "Stern", "Clark Kerr"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        locationsTableView.delegate = self
        locationsTableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationsImages.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = locationsTableView.dequeueReusableCellWithIdentifier("locationCell", forIndexPath: indexPath) as! LocationTableViewCell
        
        cell.locationImage.image = locationsImages[indexPath.row]
        cell.locationImage.contentMode = .ScaleAspectFill
        cell.locationLabel.text = locationsLabels[indexPath.row]
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
