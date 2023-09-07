//
//  ConsultorioController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 14/7/22.
//

import UIKit

class ConsultorioController: UITableViewController {
    
    
    @IBOutlet var tableview: UITableView!
    @IBOutlet weak var image1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        image1.setImage(UIImage(named: "ddhh"), for: .normal)
        image1.contentMode = .scaleAspectFit
       /* image2.setImage(UIImage(named: "ddcc"), for: .normal)
        image3.setImage(UIImage(named: "nnuu"), for: .normal)
        image4.setImage(UIImage(named: "hombres")!, for: .normal)
        image5.setImage(UIImage(named: "convencion")!, for: .normal)
        image6.setImage(UIImage(named: "carta")!, for: .normal)
        image7.setImage(UIImage(named: "declaracion")!, for: .normal)
        image8.setImage(UIImage(named: "antecedentes")!, for: .normal)
        image9.setImage(UIImage(named: "cidh")!, for: .normal)*/
        
     

        // Do any additional setup after loading the view.
    }
   
   
    @IBAction func action(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex{
        case 0:
            print("hola")
           /* image1.setImage(UIImage(named: "ddhh"), for: .normal)
            image2.setImage(UIImage(named: "ddcc"), for: .normal)
            image3.setImage(UIImage(named: "nnuu"), for: .normal)
            image4.setImage(UIImage(named: "hombres")!, for: .normal)
            image5.setImage(UIImage(named: "convencion")!, for: .normal)
            image6.setImage(UIImage(named: "carta")!, for: .normal)
            image7.setImage(UIImage(named: "declaracion")!, for: .normal)
            image8.setImage(UIImage(named: "antecedentes")!, for: .normal)
            image9.setImage(UIImage(named: "cidh")!, for: .normal)*/
        case 1:
            print("hola")
          /*  image.image = UIImage(named: "cpe")!
            image2.image = UIImage(named: "ley1925")!
            image3.image = UIImage(named: "codigo")!
            image4.image = UIImage(named: "telco")!
            image5.image = UIImage(named: "penal")!
            image6.image = UIImage(named: "974")!
            image7.image = UIImage(named: "info")!
            image8.image = UIImage(named: "servicios")!
            image9.image = UIImage(named: "sentencia")!*/
        default:
            print("hola")
           // image.image = UIImage(named: "cap")!
            
            
        }
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("hola")
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 9
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
