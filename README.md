# PlayGround_image

- ###get url avata github : https://avatars0.githubusercontent.com/u/22950936?v=3&s=460

  let url = URL(string: "https://avatars0.githubusercontent.com/u/22950936?v=3&s=460")
- ###image save by Data : 

  let image = try UIImage(data: Data(contentsOf: url!))
- ###create UIImgeVew:

  let imageView = UIImageView(image: image)
- ### set frame for imageView (get size image: image?.size)

  imageView.frame = CGRect(origin: CGPoint(x:0,y:0.0), size: (image?.size)!)
- ###Use UIView create view then add image
  
  let containerView = UIView(frame: CGRect(x:0.0,y:0.0,width: 460, height: 460))
- ### import XCPlayground / import PlaygroundSupport the  

  PlaygroundPage.current.liveView = containerView //add UI for containerView
- ### addSubView() push image to view
  
  containerView.addSubview(imageView)
- ### tranform (: UIView) change properties for image

 // Thay đổi độ xoay của ảnh

  imageView.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI_2))

  // Cộng hai thuộc tính vào với nhau
  // Thuộc tính scale: Thu nhỏ phóng to hình ảnh
  imageView.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI_2)).concatenating(CGAffineTransform(scaleX: 0.5,y: 0.5))

  // Dùng để dịch chuyển ảnh
  imageView.transform = CGAffineTransform(translationX: CGFloat(0), y: CGFloat(0))
  
  
