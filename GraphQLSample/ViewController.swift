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
    
    
    private func excuteQuery<T: GraphQLQuery>(query: T, isAPQ: Bool) {
        Network.shared.apollo.fetch(query: query, cachePolicy: .fetchIgnoringCacheData) { result in
            guard let data = try? result.get().data else { return }
            let json = data.jsonObject
            do {
                let serialized = try JSONSerialization.data(withJSONObject: json, options: [.prettyPrinted])
                let text = String(decoding: serialized, as: UTF8.self)
                print("\n*****\n\(String(decoding: serialized, as: UTF8.self))\n*****")
                DispatchQueue.main.async { [weak self] in
                    self?.responseTextView.text = text
                }
                //                let deserialized = try! JSONSerialization.jsonObject(with: serialized, options: [.mutableContainers]) as! JSONObject
                //                print(deserialized)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    private func excuteMutationQuery<T: GraphQLMutation>(query: T) {
        Network.shared.apollo.perform(mutation: query, context: nil, queue: DispatchQueue.init(label: "Mutation")) { (result) in
            guard let data = try? result.get().data else { return }
            let json = data.jsonObject
            do {
                let serialized = try JSONSerialization.data(withJSONObject: json, options: [.prettyPrinted])
                let text = String(decoding: serialized, as: UTF8.self)
                print("\n*****\n\(String(decoding: serialized, as: UTF8.self))\n*****")
                DispatchQueue.main.async { [weak self] in
                    self?.responseTextView.text = text
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
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
        case 4:
            cell.textLabel?.text = "Tutor By Id"
        default:
            return UITableViewCell()
        }
        tableView.tableFooterView = UIView()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.responseTextView.text = ""
        switch indexPath.row {
        case 0:
            self.excuteQuery(query: FetchAllStudentsQuery(), isAPQ: true)
        case 1:
            self.excuteQuery(query: StudentByIdQuery(id: 1), isAPQ: false)
        case 2:
            self.excuteQuery(query: FetchAllTutorsQuery(), isAPQ: true)
        case 3:
            self.excuteMutationQuery(query: AddTutorMutation(id: 3, name: "Sample", sex: "Male", qualification: "CS"))
        case 4:
            self.excuteQuery(query: TutorByIdQuery(tutorId: 20), isAPQ: false)
        default:
            break
        }
        
    }
}
