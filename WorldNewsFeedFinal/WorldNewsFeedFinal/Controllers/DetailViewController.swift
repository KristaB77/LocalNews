//
//  DetailViewController.swift
//  WorldNewsFeedFinal
//
//  Created by krista.bolsakova on 26/08/2021.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {
    var savedItems = [Items]()
    var context:NSManagedObjectContext?
    var webURLString = String()
    var titleString = String()
    var contentString = String()
    var newsImage: UIImage?

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var readButton: UIButton!
    @IBOutlet weak var savedButton: UIButton!
    

    override func viewDidLoad(){
        super.viewDidLoad()
        readButton.layer.cornerRadius = 12
        readButton.tintColor = .label
        
        self.title = "Article"
        
        titleLabel.text = titleString
        contentTextView.text = contentString
        newsImageView.image = newsImage
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
    }


  /* func saveData(){
        do{
            try context?.save()
           basicAlert(title: "Saved!", message: "Find saved article in Saved tab bar.")
            
        }catch{
            print(error.localizedDescription)
            
        }
 
    }
*/
    
    @IBAction func savedButtonTapped(_ sender: Any) {
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination: WebViewController = segue.destination as! WebViewController
        destination.urlString = webURLString
    }


}




