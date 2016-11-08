//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
import PlaygroundSupport

 // Cần tạo kiểu URL
let url = URL(string : "https://avatars0.githubusercontent.com/u/22950936?v=3&s=460")

// Đưa anh vào data
 let image = try UIImage(data: Data(contentsOf: url!))
    // Hiển thị hình ảnh
let imageView = UIImageView(image: image)
    // Thuộc tính của ảnh
 imageView.frame = CGRect(origin: CGPoint(x:0,y:0.0), size: (image?.size)!)

// Vẽ một hình để add ảnh vào
let containerView = UIView(frame: CGRect(x:0.0,y:0.0,width: 460, height: 460))
// Add containerView vào live View để hiển thị
 PlaygroundPage.current.liveView = containerView

     // Đẩy hình ảnh ra màn hình
   containerView.addSubview(imageView)

        // transform để thay đổi
 // Thay đổi độ xoay của ảnh

imageView.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI_2))

// Cộng hai thuộc tính vào với nhau
// Thuộc tính scale: Thu nhỏ phóng to hình ảnh
imageView.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI_2)).concatenating(CGAffineTransform(scaleX: 0.5,y: 0.5))

// Dùng để dịch chuyển ảnh
imageView.transform = CGAffineTransform(translationX: CGFloat(0), y: CGFloat(0))








