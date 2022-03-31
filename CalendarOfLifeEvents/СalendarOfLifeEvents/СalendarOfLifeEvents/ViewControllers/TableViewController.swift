//
//  TableViewController.swift
//  СalendarOfLifeEvents
//
//  Created by Pavel Metelin on 3/30/22.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: - IB Outlets

    @IBOutlet var navigationView: UIView!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var toolBar: UIView!
    
    private var getEvent = Event.getEvent()
    private let bkgColor = UIColor(red: 54/255, green: 58/255, blue: 67/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = bkgColor
        tableView.separatorColor = .clear
        navigationView.backgroundColor = bkgColor
        toolBar.backgroundColor = bkgColor
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getEvent.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        104
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.backgroundView = UIImageView(image: UIImage(named: "bkgCell"))
        cell.backgroundColor = bkgColor
        cell.titleLabel.text = getEvent[indexPath.row].title
        cell.amountLabel.text = "\(String(getEvent[indexPath.row].amount)) руб."
        cell.qtyLabel.text = "\(String(getEvent[indexPath.row].countFact)) раз"
        cell.lastLabel.text = "\(String(Event.getLongTime(indexPath.row))) дня(ей) назад"
        cell.repeatButton.tag = indexPath.row
        return cell
    }

    @IBAction func deleteButtonPressed(_ sender: UIButton) {}

    @IBAction func repeatButtonPressed(_ sender: UIButton) {
        Event.repeatEvent(for: sender.tag)
        getEvent = Event.getEvent()
        tableView.reloadData()
    }

    @IBAction func editButtonPressed(_ sender: UIButton) {}
}
