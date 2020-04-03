//
//  ViewController.swift
//  GraphQLSample
//
//  Created by Ezhil Adhavan Ananthavel on 30/03/20.
//  Copyright © 2020 Ezhil Adhavan. All rights reserved.
//

import UIKit
import Apollo

class ViewController: UIViewController {

    @IBOutlet weak var responseTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    private func excuteQuery<T: GraphQLQuery>(query: T) {
        Network.shared.apollo.fetch(query: query, cachePolicy: .fetchIgnoringCacheData) { result in
            guard let data = try? result.get().data else { return }
            let json = data.jsonObject
            do {
                let serialized = try JSONSerialization.data(withJSONObject: json, options: [.prettyPrinted])
                let text = String(decoding: serialized, as: UTF8.self)
                print("\n*****\n\(String(decoding: serialized, as: UTF8.self))\n*****")
                self.responseTextView.text = text
                //                let deserialized = try! JSONSerialization.jsonObject(with: serialized, options: [.mutableContainers]) as! JSONObject
                //                print(deserialized)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    @IBAction func apqAction(_ sender: Any) {
        
        
    }
    
    @IBAction func normalAction(_ sender: Any) {
        
//        Network.shared.apollo.fetch(query: FetchAllTutorsQuery(), cachePolicy: .fetchIgnoringCacheData) { result in
//            guard let data = try? result.get().data else { return }
//            let json = data.jsonObject
//            do {
//                let serialized = try JSONSerialization.data(withJSONObject: json, options: [.prettyPrinted])
//                print(String(decoding: serialized, as: UTF8.self))
////                let deserialized = try! JSONSerialization.jsonObject(with: serialized, options: [.mutableContainers]) as! JSONObject
////                print(deserialized)
//            } catch {
//                print(error.localizedDescription)
//            }
//        }
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Fetch All Students"
        case 1:
            cell.textLabel?.text = "Fetch Student by Id"
        case 2:
            cell.textLabel?.text = "Fetch All Tutor"
        case 3:
            cell.textLabel?.text = "Add tutor"
        default:
            return UITableViewCell()
        }
        tableView.tableFooterView = UIView()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            self.excuteQuery(query: FetchAllStudentsQuery())
        case 1:
            self.excuteQuery(query: StudentByIdQuery(id: 1))
        case 2:
            self.excuteQuery(query: FetchAllTutorsQuery())
        case 3:
            break
            //self.excuteQuery(query: AddTutorMutation(id: 3, name: "Sample", sex: "Male", qualification: "CS"))
        default:
            break
        }
        
    }
}
