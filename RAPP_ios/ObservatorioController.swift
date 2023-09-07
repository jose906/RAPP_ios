//
//  ObservatorioController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 1/7/22.
//

import UIKit

class ObservatorioController: UITableViewController {

    @IBOutlet weak var reformas: UIButton!
    var url = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    

    @IBAction func conflictosAction(_ sender: Any) {
        
        url="https://rapp.org.bo/wp-content/uploads/2022/05/PeriodistasConflictosSocialesYReconciliacion-5242721.pdf"
        performSegue(withIdentifier: "observatorio", sender: self)
    }
    @IBAction func condicionamientosAction(_ sender: Any) {
        
        url="https://rapp.org.bo/wp-content/uploads/2022/05/censura-indirecta.pdf"
        performSegue(withIdentifier: "observatorio", sender: self)
    }
    @IBAction func reformasAction(_ sender: Any) {
        
        url="https://rapp.org.bo/wp-content/uploads/2022/05/INFORME-REGIONAL-ANDINO-5.pdf"
        performSegue(withIdentifier: "observatorio", sender: self)
        
    }
    @IBAction func ataques(_ sender: Any) {
        
        url="https://www.noticiasfides.com/nacional/politica/evo-morales-unitel-red-uno-el-deber-y-pagina-siete-son-peor-que-la-bomba-atomica-414046"
        performSegue(withIdentifier: "observatorio", sender: self)
        
        
        
    }
    
    @IBAction func expresiones(_ sender: Any) {
        
        url = "https://www.paginasiete.bo/nacional/2022/4/24/el-procurador-amenaza-con-dar-su-dosis-pagina-siete-329390.html"
        performSegue(withIdentifier: "observatorio", sender: self)
        
    }
    
    @IBAction func uso(_ sender: Any) {
        
        url="https://eldeber.com.bo/santa-cruz/caso-londras-periodistas-piden-rearticular-la-comision-de-fiscales-y-restituir-a-los-investigadores_267220"
        performSegue(withIdentifier: "observatorio", sender: self)
    }
    
    @IBAction func procesos(_ sender: Any) {
        
        url = "https://www.paginasiete.bo/nacional/2022/4/20/ministerio-de-obras-publicas-anuncia-acciones-legales-contra-pagina-siete-329041.html"
        performSegue(withIdentifier: "observatorio", sender: self)
    }
    
    @IBAction func situacion(_ sender: Any) {
        
        url = "https://rapp.org.bo/wp-content/uploads/2022/05/PeriodistasConflictosSocialesYReconciliacion-5242721.pdf"
        performSegue(withIdentifier: "observatorio", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? ObservatorioPDFController {
            destination.url1 = url
            
        }
        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 8
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
