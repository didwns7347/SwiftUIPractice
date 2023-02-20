//
//  ViewController.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/17.
//

import UIKit
import SwiftUI
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let backView = UIView()
        backView.frame.size = view.frame.size.applying(.init(scaleX: 0.6, y: 0.3))
        backView.center = view.center
        backView.backgroundColor = .darkGray
        view.addSubview(backView)
        
        let label = UILabel()
        label.text = "hello swiftUI"
        label.font = .preferredFont(forTextStyle: .title1)
        label.textColor = .white
        label.sizeToFit()
        label.center = view.center
        view.addSubview(label)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
struct ViewControllerEX01 : View{
    var body: some View {
        Text("sdfg")
    }
}
struct ViewController_Previews: PreviewProvider{
    static var previews: some View {
        ViewController_Previews()
    }
}
extension ViewController_Previews : UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> ViewController {
        ViewController()
    }
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        
    }
}
