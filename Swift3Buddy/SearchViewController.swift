//
//  SearchViewController.swift
//  Swift3Buddy
//
//  Created by Anil Kumar on 3/27/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//
import UIKit

class SearchViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var chatItems:NSMutableArray = []
    
    var endDraggingPoint:CGFloat = 0;
    
    var beginDraggingPoint:CGFloat = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // reverse geocoding
//        CLGeocoder().reverseGeocodeLocation(CLLocation) { (<#[CLPlacemark]?#>, <#Error?#>) in
//            <#code#>
//        }
        
        
        // Do any additional setup after loading the view.
        
        chatItems = ["SearchBarCell","ChatCell"];
        
        for value in 1...100{
            
            chatItems.add(String(value))
            
        }
        
        print(chatItems.count)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: - Tableview delegate Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return chatItems.count
    }
    
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        var cell:UITableViewCell!
        
        var cellIdentyfier: NSString
        
        
        let itemName:NSString = chatItems.object(at: indexPath.row) as! NSString;
        
        if itemName == "SearchBarCell"
        {
            cellIdentyfier = "SearchBarCell"
            
        }else if itemName == "ArchiveLabelCell" {
            cellIdentyfier = "ArchiveLabelCell"
        }else {
            cellIdentyfier = "ChatCell"
        }
        
        cell = tableView.dequeueReusableCell(withIdentifier: cellIdentyfier as String)
        
        if(cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCellStyle.default,reuseIdentifier:cellIdentyfier as String)
        }
        
        return cell;
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView)
    {
        print("scrollViewDidScroll: \(scrollView.contentOffset.y)");
        
        if endDraggingPoint == 0 && scrollView.contentOffset.y <= -30 {
            
            self.addArchiveCell(scrollView: scrollView);
            
        }else if scrollView.contentOffset.y > 50 {
            
            self.removeArchiveCell(scrollView: scrollView)
        }
    }
    
    
    
    
    func removeArchiveCell(scrollView:UIScrollView) {
        
        if chatItems.contains("ArchiveLabelCell") {
            print("Removing archive cell: \(scrollView.contentOffset.y)");
            chatItems.removeObject(at: 0);
            tableView.deleteRows(at: [IndexPath.init(row: 1, section: 0)], with: .none)
        }
    }
    
    func addArchiveCell(scrollView:UIScrollView) {
        
        if beginDraggingPoint <= 50 {
            
            if !chatItems.contains("ArchiveLabelCell") {
                self.chatItems.insert("ArchiveLabelCell", at: 0)
                print("Adding archive cell: \(scrollView.contentOffset.y)");
                //self.tableView.beginUpdates()
                self.tableView.insertRows(at: [IndexPath.init(row: 1, section: 0)], with: .none)
                //self.tableView.endUpdates()
                
            }
        }
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
    {
        endDraggingPoint = 0
        beginDraggingPoint = scrollView.contentOffset.y
        
    }
    
    
}
