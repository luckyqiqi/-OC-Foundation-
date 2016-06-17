//
//  main.m
//  OC-Foundation(结构体)
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //OC Foundation结构体
        //1.表示范围的结构体 NSRange
        //(1)逐个赋值
        NSRange range1;
        range1.location=12;
        range1.length=21;
        NSLog(@"range1==>{%ld,%ld}",range1.location,range1.length);
        //(2)C 的聚合方式
        NSRange range2={21,4};
        NSLog(@"range2==>{%ld,%ld}",range2.location,range2.length);
        //(3)OC方式
        NSRange range3=NSMakeRange(11, 22);
        NSLog(@"range3==>%@",NSStringFromRange(range3));//转化为oc字符串打印
        //转回去
        NSRange newRange=NSRangeFromString(NSStringFromRange(range3));
        NSLog(@"back==>{%ld,%ld}",newRange.location,newRange.length);
        
        //2.表示坐标的结构体 NSPoint
        //(1).
        NSPoint point1;
        point1.x=2.34;
        point1.y=1.3;
        NSLog(@"point1==>{%g,%g}",point1.x,point1.y);
        //(2).
        NSPoint point2={2,3};
        NSLog(@"point==>{%g,%g}",point2.x,point2.y);
        //(3)
        NSPoint point3=NSMakePoint(23.2, 33.3);
        NSLog(@"point3==>%@",NSStringFromPoint(point3));//变成字符串打印
        //转回去
        NSPoint newPoint=NSPointFromString(NSStringFromPoint(point3));
        NSLog(@"newPoint==>{%g,%g}",newPoint.x,newPoint.y);
        
        //3.表示大小的结构体 NSSize
        //(1)
        NSSize wsize1;
        wsize1.width=32;
        wsize1.height=2;
        NSLog(@"size1==>{%g,%g}",wsize1.width,wsize1.height);
        //(2)
        NSSize wsize2={2.2,3.4};
        NSLog(@"size2==>{%g,%g}",wsize2.width,wsize2.height);
        //(3)
        NSSize wsize3=NSMakeSize(12.3, 32.2);
        NSLog(@"size3==>%@",NSStringFromSize(wsize3));//转化
        //转回去
        NSSize newSize=NSSizeFromString(NSStringFromSize(wsize3));
        NSLog(@"newSize==>{%g,%g}",newSize.width,newSize.height);
        
        //4.表示区域的结构体 NSRect
        //(1).
        NSRect rect1;
        rect1.origin.x=12.32;
        rect1.origin.y=32.32;
        rect1.size.width=32;
        rect1.size.height=23;
        NSLog(@"rect1==>{{%g,%g},{%g,%g}}",rect1.origin.x,rect1.origin.y,rect1.size.width,rect1.size.height);
        //(2).
        NSRect rect2={12,32,4,5};
        NSLog(@"rect2==>%@",NSStringFromRect(rect2));//转化
        //(3).
        NSRect rect3=NSMakeRect(12, 321, 2, 2);
        NSLog(@"rect3==>%@",NSStringFromRect(rect3));
        //(4).NSPoint+NSSize
        NSRect rect4={point3,wsize3};
        NSLog(@"rect4==>%@",NSStringFromRect(rect4));
        NSLog(@"rect4==>%@,%@",NSStringFromPoint(rect4.origin),NSStringFromSize(rect4.size));
        //转回去
        NSRect newRect=NSRectFromString(NSStringFromRect(rect4));
        NSLog(@"newRect==>%@",NSStringFromRect(newRect));
        
    }
    return 0;
}
