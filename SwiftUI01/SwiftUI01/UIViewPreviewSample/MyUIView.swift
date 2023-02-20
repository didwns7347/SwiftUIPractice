//
//  MyUIView.swift
//  SwiftUI01
//
//  Created by yangjs on 2023/02/17.
//

import SwiftUI
final class MyView : UIView{
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        let qrcodeSymbol = UIImage(systemName: "qrcode")?
            .applyingSymbolConfiguration(
                .init(pointSize: 80, weight: .bold)
            )
        
        let qrcodeImageView = UIImageView(image: qrcodeSymbol)
        qrcodeImageView.center = center.applying(.init(scaleX: 0, y: -50))
        addSubview(qrcodeImageView)
        
        let barcodeSymbol = UIImage(systemName: "barcode")?
            .applyingSymbolConfiguration(
                .init(pointSize: 80, weight: .bold)
            )
        
        let barcodeImageView = UIImageView(image: barcodeSymbol)
        barcodeImageView.center = center.applying(.init(scaleX: 0, y: 50))
        addSubview( barcodeImageView)
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView_Previews().previewLayout(.fixed(width: 200, height: 250))
    }
}

extension MyView_Previews : UIViewRepresentable{
    func makeUIView(context: Context) -> MyView {
        MyView(frame: CGRect(x: 0, y: 0, width: 200, height: 250))
    }
    func updateUIView(_ uiView: MyView, context: Context) {
        
    }
}
