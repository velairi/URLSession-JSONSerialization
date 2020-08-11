//
//  ViewController.swift
//  RedFinPart1
//
//  Created by Valerie Don on 8/10/20.
//  Copyright © 2020 Valerie Don. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://data.sfgov.org/resource/yitu-d5am.json")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil {
                guard let data = data else { return }
                print("Data", data)
                print("Response", response)
                do {
                let object = try JSONSerialization.jsonObject(with: data, options: [])
                    print("Object", object)
                } catch {

                }
            } else {
                print("Error", error)
            }
        }
        task.resume()
    }
}
