//
//  ViewController.swift
//  ObjectMapperDemo
//
//  Created by Kahuna on 1/31/17.
//  Copyright © 2017 Kahuna. All rights reserved.
//

import UIKit
import ObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getPost()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getMethod ()
    {
        //To get more detail information
    }
    
    func getPost() {
        let shared = ServerAPI()
        shared.invokeHTTPRequestGET("https://jsonplaceholder.typicode.com/users", withToken: false, token: "", withSucessBlock: {
            (result) in
            let resultArray = result as! NSArray
            let dictionaryData = resultArray[0]
            let customerArray = Mapper<RootClass>().mapArray(JSONArray: result as! [[String : Any]])
            print(customerArray ?? "")
            let customer = Mapper<RootClass>().map(JSONObject: dictionaryData)
            print(customer?.address?.city ?? "")
        }, withFailureBlock: {
            (error) in
            print("hi")

        })
    }

}
