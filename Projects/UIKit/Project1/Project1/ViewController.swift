//
//  ViewController.swift
//  Project1
//
//  Created by Şule Kaptan on 9.08.2024.
//

import UIKit //this file will reference the iOS user interface toolkit

class ViewController: UITableViewController { //I want to create a new screen of data called ViewController, based on UIViewController.
    //When you see a data type that starts with “UI”, it means it comes from UIKit.
    //UIViewController is Apple’s default screen type, which is empty and white until we change it.

    var pictures = [String]()
    
    override func viewDidLoad() { //starts a method. As you know, the override keyword is needed because it means “we want to change Apple’s default behavior from UIViewController.”
        //viewDidLoad() is called by UIKit when the screen has loaded, and is ready for you to customize.
        
        super.viewDidLoad() //This super call means “tell Apple’s UIViewController to run its own code before I run mine,” and you’ll see this used a lot.
        
        let fm = FileManager.default //dosyaları aramak için kullanacağız
        let path = Bundle.main.resourcePath! //uygulamama ekleyeceğim tüm resimler burda
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl"){
                //this is a picture to load
                pictures.append(item)
            }
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }


}

