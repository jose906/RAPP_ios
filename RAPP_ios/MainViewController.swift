//
//  MainViewController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 31/5/22.
//

import UIKit

class MainViewController: UITableViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url1 = URL(string: "https://rapp.org.bo/wp-content/uploads/2022/03/4.png")!
        let url2 = URL(string: "https://rapp.org.bo/wp-content/uploads/2022/03/6.png")!
        let url3 = URL(string: "https://rapp.org.bo/wp-content/uploads/2022/03/5.png")!
        let url4 = URL(string: "https://rapp.org.bo/wp-content/uploads/2022/03/3.png")!
        let url5 = URL(string: "https://rapp.org.bo/wp-content/uploads/2022/03/images.png")!
        let url6 = URL(string: "https://rapp.org.bo/wp-content/uploads/2022/03/logo-web-1.png'")!

            // Create Data Task
        if let data = try? Data(contentsOf: url1) {
                // Create Image and Update Image View
                image1.image = UIImage(data: data)
            }
        if let data = try? Data(contentsOf: url2) {
                // Create Image and Update Image View
                image2.image = UIImage(data: data)
            }
        if let data = try? Data(contentsOf: url3) {
                // Create Image and Update Image View
                image3.image = UIImage(data: data)
            }
        if let data = try? Data(contentsOf: url4) {
                // Create Image and Update Image View
                image4.image = UIImage(data: data)
            }
        if let data = try? Data(contentsOf: url5) {
                // Create Image and Update Image View
                image5.image = UIImage(data: data)
            }
        if let data = try? Data(contentsOf: url6) {
                // Create Image and Update Image View
                image6.image = UIImage(data: data)
            }

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 7
    }
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
