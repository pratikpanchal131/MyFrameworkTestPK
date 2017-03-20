import UIKit

public class FrameworkVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        let podBundle = Bundle(for: FrameworkVC.self)
        
        let bundleURL = podBundle.url(forResource: "PratikFramework", withExtension: "bundle")
     
        let bundle = Bundle(url: bundleURL!)!
        let cellNib = UINib(nibName: "OurCell", bundle: bundle)
        tableView.register(cellNib, forCellReuseIdentifier: "OurCell")
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableViewAutomaticDimension
        
        
        
        
        
        
        
    }
}


extension FrameworkVC {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "OurCell", for: indexPath) as! OurCell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "OurCell", for: indexPath) as! OurCell
        cell.lblName.text = "Hello Pratik"
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
}
