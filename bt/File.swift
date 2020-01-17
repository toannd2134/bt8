//
//  File.swift
//  bt
//
//  Created by Toan on 1/17/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import Foundation
/*1. Hiển thị số ngày của tháng. Với tháng 2 có 29 ngày nếu là năm nhuận, 28 ngày nếu là năm không nhuận.

2. Chèn phần tử có giá trị X vào phía sau phần tử có giá trị lớn nhất trong mảng.*/
 
func HienThiNgay( _ nam :Int){
   
    var mang : [Int] =  [1,2,3,4,5,6,7,8,9,10,11,12]
    let mang2 = mang.filter{$0 % 2 == 0 && $0 != 2}
             let mang3 = mang.filter{$0 % 2 != 0 }
          
    if nam % 400 == 0 && nam % 100 == 0 && nam % 4 == 0{
        
            for i in mang2 {
                print(" thang \(i) co 30 ngay " )
            }
            for i in mang3 {
            print(" thang \(i) co 31 ngay")
            }
            print(" thang 2 co 29 ngay")
        
    }else{
        for i in mang2 {
                      print(" thang \(i) co 30 ngay " )
                  }
                  for i in mang3 {
                  print(" thang \(i) co 31 ngay")
                  }
                  print(" thang 2 co 28 ngay")
        
    }
}
func chenso(){

    print("nhap so muon chen")
     let a = Int(readLine() ?? " 0") ?? 0
    var mang : [Int] = [1,5,3,11,7,9,7,2,3]
var posision = 0
    var max  = 0
    for item in mang[1...] {
    if max < item {
        
        max = item
        }
   
        
}
    for i in 0...mang.count-1{
           if mang[i] == max{
           posision = i
           }
       }
    mang.insert(a, at: posision)
    for n in mang {
        print(n)
    }
}
 
