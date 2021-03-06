//
//  EventsViewController.swift
//  JarrodsCoffee
//
//  Created by Michael Bogner on 6/21/21.
//

import UIKit

struct JarrodsEvent: Codable {
    let id: String
    let eventDateTime: String
    let eventLocation: String
    let eventDescription: String
}

class EventsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let urlString = "https://jarrodscoffeeteaandgallery.com/events/"
                self.loadJson(fromURLString: urlString) { (result) in
                    switch result {
                    case .success(let data):
                        self.parse(jsonData: data)
                    case .failure(let error):
                        print(error)
                    }
                }
        
//readLocalFile is the JSON File that Json developed earlier with the menu data.
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
             let decodedData = try JSONDecoder().decode(JarrodsEvent.self,
                                                        from: jsonData)
             
             print("id: ", decodedData.id)
             print("eventDateTime: ", decodedData.eventDateTime)
             print("eventLocation: ", decodedData.eventLocation)
             print("eventDescription: ", decodedData.eventDescription)
             
         } catch {
             print("Decode error, something went wrong.")
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

