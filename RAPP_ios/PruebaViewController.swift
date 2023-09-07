//
//  PruebaViewController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 20/7/22.
//

import UIKit

class PruebaViewController: UIViewController {

    var oultet:[UIImage] = []
    var index = 0
    var a = 0;
    let url = "https://rapp.org.bo/"
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        oultet.append(UIImage(named: "ddhh")!)
        oultet.append(UIImage(named: "ddcc")!)
        oultet.append(UIImage(named: "nnuu")!)
        oultet.append(UIImage(named: "hombres")!)
        oultet.append(UIImage(named: "convencion")!)
        oultet.append(UIImage(named: "carta")!)
        oultet.append(UIImage(named: "declaracion")!)
        oultet.append(UIImage(named: "antecedentes")!)
        oultet.append(UIImage(named: "cidh")!)
        print(oultet.count)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func inter(_ sender: Any) {
        a = 0
         oultet.removeAll()
         print(oultet.count)
         oultet.append(UIImage(named: "ddhh")!)
         oultet.append(UIImage(named: "ddcc")!)
         oultet.append(UIImage(named: "nnuu")!)
         oultet.append(UIImage(named: "hombres")!)
         oultet.append(UIImage(named: "convencion")!)
         oultet.append(UIImage(named: "carta")!)
         oultet.append(UIImage(named: "declaracion")!)
         oultet.append(UIImage(named: "antecedentes")!)
         oultet.append(UIImage(named: "cidh")!)
        self.tableview.reloadData()
    }
    @IBAction func nacional(_ sender: Any) {
        a = 1
        oultet.removeAll()
        print(oultet.count)
        oultet.append(UIImage(named: "cpe")!)
        oultet.append(UIImage(named: "ley1925")!)
        oultet.append(UIImage(named: "codigo")!)
        oultet.append(UIImage(named: "telco")!)
        oultet.append(UIImage(named: "penal")!)
        oultet.append(UIImage(named: "974")!)
        oultet.append(UIImage(named: "info")!)
        oultet.append(UIImage(named: "servicios")!)
        oultet.append(UIImage(named: "sentencia")!)
        print(oultet.count)
        self.tableview.reloadData()
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

extension PruebaViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        print("hola mundo")
        
        index = indexPath.row
        performSegue(withIdentifier: "consul", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if(a==0){
            switch index{
            case 1:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/Declaracion-Universal-de-Derechos-Humanos.pdf"
                    
                }
            case 2:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 =  url + "wp-content/uploads/2022/04/Pacto-Internacional-de-Derechos-Civiles-y-Politicos.pdf"
                    
                }
            case 3:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/Pacto-Internacional-de-Derechos-Civiles-y-Politicos.pdf"
                    
                }
            case 4:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/DECLARACION-AMERICANA-DE-LOS-DERECHOS-Y-DEBERES-DEL-HOMBRE.pdf"
                    
                }
            case 5:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/CONVENCION-AMERICANA-SOBRE-DERECHOS-HUMANOS.pdf"
                    
                }
            case 6:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/Carta-Democratica-Interamericana-.pdf"
                    
                }
            case 7:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/DECLARACION-DE-PRINCIPIOS-SOBRE-LIBERTAD-DE-EXPRESION-.pdf"
                    
                }
            case 8:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/Antecedentes-e-interpretacion-de-la-declaracion-de-principios.pdf"
                    
                }
            case 9:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + ""
                    
                }
            default:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/Declaracion-Universal-de-Derechos-Humanos.pdf"
                    
                }
                
            }
            
            
            
        }else{

            
            switch index{
            case 1:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/CPE-Bolivia.pdf"
                    
                }
            case 2:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/Ley-de-Imprenta-1925.pdf"
                    
                }
            case 3:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/Ley-general-de-Telecomunicaciones.pdf"
                    
                }
            case 4:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/la-Ley-1970.pdf"
                    
                }
            case 5:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/Ley-de-Unidades-de-transparencia-y-lucha-contra-la-corrupcion.pdf"
                    
                }
            case 6:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/DS-28168-sobre-Acceso-a-la-Informacion-.pdf"
                    
                }
            case 7:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/DS-29174-denominado-_Reglamento-de-Provision-de-Servicios-de-Telecomunicaciones-en-Areas-Rurales-del-Territorio-Nacional_.pdf"
                    
                }
            case 8:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/DS-29174-denominado-_Reglamento-de-Provision-de-Servicios-de-Telecomunicaciones-en-Areas-Rurales-del-Territorio-Nacional_.pdf"
                    
                }
            case 9:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/Declaracion-Universal-de-Derechos-Humanos.pdf"
                    
                }
            default:
                if let destination = segue.destination as? InternacionlPDFController {
                    destination.url1 = url + "wp-content/uploads/2022/04/CPE-Bolivia.pdf"
                    
                }
                
            }
            
            }
        
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "consultorio", for: indexPath)
        
        
        if let image = cell.viewWithTag(38) as? UIImageView   {
            
            image.image = oultet[indexPath.row]
            image.layer.masksToBounds = true
            image.layer.cornerRadius = image.bounds.width / 15
            
            
         
            
        }
        
            
        

        
        
        return cell
    }
    
        
    }
    
