//
//  ViewController.swift
//  CS 490 APP
//
//  Created by Tim Beemsterboer on 2/4/18.
//  Copyright © 2018 Tim Beemsterboer. All rights reserved.
//

import UIKit
import Alamofire
import CoreData

class ViewController: UIViewController {
    
    var shows = [TVShow]()
    //instantiate empty array of tv shows

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "https://api.tvmaze.com/shows?page=1")
            Alamofire.request(url!).responseJSON { (response) in
            
            let result = response.data
            
                do {
                    self.shows = try JSONDecoder().decode([TVShow].self, from: result!)
                    for show in self.shows {
                        print(String(show.id),":",show.name,":",show.type,":",show.language,":",show.summary)
                    }
                }catch {
                    print("error")
                }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

