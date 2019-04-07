//
//  ViewController.swift
//  Gestos
//
//  Created by Alan Fritsch on 06/04/19.
//  Copyright © 2019 Alan Fritsch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    private func atualizaGestoRealizado(nomeGesto : String) {
        lbUltimoGesto.text = nomeGesto
        edGestosCapturados.text = edGestosCapturados.text + nomeGesto + "\n"
    }
    
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        atualizaGestoRealizado(nomeGesto: "TAP")
        lbUltimoGesto.textColor = .blue
    }
    
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        atualizaGestoRealizado(nomeGesto: "SWIPE")
        lbUltimoGesto.textColor = .green
    }
    
    @IBAction func panGesture(_ sender: UIPanGestureRecognizer) {
        atualizaGestoRealizado(nomeGesto: "PAN")
        lbUltimoGesto.textColor = .brown
    }
    
    @IBAction func pinchGesture(_ sender: UIPinchGestureRecognizer) {
        atualizaGestoRealizado(nomeGesto: "PINCH")
        lbUltimoGesto.textColor = .red
    }
    
    @IBOutlet weak var edGestosCapturados: UITextView!
    
    @IBOutlet weak var lbUltimoGesto: UILabel!
}

