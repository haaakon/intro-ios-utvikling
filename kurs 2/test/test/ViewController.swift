//
//  ViewController.swift
//  test
//
//  Created by Håkon Bogen on 18/01/17.
//  Copyright © 2017 beiningbogen.no. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    var movieDict = [(String, String)]()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self

        let url = URL(string: "http://www.omdbapi.com/?t=star+wars&y=&plot=short&r=json")!
        let session = URLSession.shared

        let task = session.dataTask(with: url, completionHandler: { (data, response, error) -> Void in

            print(error)

            if let jsonDict = try! JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String : String] {

                var movieDict = [(String, String)]()

                for (index, value) in jsonDict.enumerated() {

                    movieDict.append(value)

                }

                self.movieDict = movieDict
                self.tableView.reloadData()

            }
            
            
        })
        
        task.resume()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return movieDict.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text =  movieDict[indexPath.row].0
        cell.detailTextLabel?.text =  movieDict[indexPath.row].1

        return cell
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

