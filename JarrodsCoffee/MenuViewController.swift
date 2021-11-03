//
//  ViewController.swift
//  Jarrods Coffee Builder
//
//  Created by CARLOS DANIEL DE LEON on 11/2/21.
//


import UIKit

struct JarrodsMenu: Codable {
    let id: String
    let menuItem: String
    let size1: String
    let size2: String
    let price1: Double
    let price2: Double
}

class ViewController: UIViewController {
    override func viewDidLoad() {
           super.viewDidLoad()
        
        
        let urlString = "https://raw.githubusercontent.com/CarlosDDeLeon/Coffe-shop-menu/main/data.json"
                self.loadJson(fromURLString: urlString) { (result) in
                    switch result {
                    case .success(let data):
                        self.parse(jsonData: data)
                    case .failure(let error):
                        print(error)
                    }
                }
        
//readJsonFile is the JSON File that Json developed earlier with the menu data.
    }
    
    private func readLocalFile(forName name: String) -> Data? {
         do {
             if let bundlePath = Bundle.main.path(forResource: name,
                                                  ofType: "json"),
                 let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                 return jsonData
             }
         } catch {
             print(error)
         }
         
         return nil
     }
     
     private func loadJson(fromURLString urlString: String,
                           completion: @escaping (Result<Data, Error>) -> Void) {
         if let url = URL(string: urlString) {
             let urlSession = URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
                 if let error = error {
                     completion(.failure(error))
                 }
                 
                 if let data = data {
                     completion(.success(data))
                 }
             }
             
             urlSession.resume()
         }
     }

     private func parse(jsonData: Data) {
         do {
             let decodedData = try JSONDecoder().decode(JarrodsMenu.self,
                                                        from: jsonData)
             
             print("id: ", decodedData.id)
             print("menuItem: ", decodedData.menuItem)
             print("size1: ", decodedData.size1)
             print("size2: ", decodedData.size2)
             print("price1: ", decodedData.price1)
             print("price2: ", decodedData.price2)

             
         } catch {
             print("Decode error, sometingh went wrong.")
         }
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
