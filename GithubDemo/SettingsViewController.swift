//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by Rahul Pandey on 10/20/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

// define protocol here

class SettingsViewController: UIViewController {

    @IBOutlet weak var cancelButtonItem: UIBarButtonItem!
    @IBOutlet weak var saveButtonItem: UIBarButtonItem!
    @IBOutlet weak var starCount: UILabel!
    @IBOutlet weak var starSlider: UISlider!
    var searchSettings = GithubRepoSearchSettings()
    
    @IBAction func cancelTapped(_ sender: AnyObject) {
        dismiss(animated: true) {
        }
    }
    
    @IBAction func starSliderChanged(_ sender: AnyObject) {
        starCount.text = String(searchSettings.minStars)
        print("slider value changed")
        searchSettings.minStars = Int(starSlider.value)
    }
    
    @IBAction func saveTapped(_ sender: AnyObject) {
        dismiss(animated: true) { 
            print("should save data here")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(searchSettings.minStars)
        starCount.text = String(searchSettings.minStars)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
