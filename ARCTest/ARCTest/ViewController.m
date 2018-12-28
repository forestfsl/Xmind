//
//  ViewController.m
//  ARCTest
//
//  Created by admin on 2018/12/24.
//  Copyright © 2018 admin. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import "Sark.h"
#import "runtimeDebug.h"

@interface ViewController ()

//@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation ViewController



//__weak NSString *string_weak_ = nil;


- (void)viewDidLoad {
    [super viewDidLoad];
   
    //demo1
    // Do any additional setup after loading the view, typically from a nib.
//    self.textField.text = @"songlin";
//    NSLog(@"self._textField1:%@",self.textField);
//    NSString *firstName = self.textField.text;
//    NSLog(@"firstName1:%p",firstName);
//    self.textField.text = @"fengsonglin";
//    NSLog(@"self.textFiled2:%@",self.textField);
//    NSLog(@"firstName2:%p",firstName);
//    上面总结：开始的时候firstName和self.textField指向同一个地址，但是25行self.textField重新赋值了，firstName和self.textField不指向同一个地址，所以firstName的值还是songlin，但是self.textField.text的值从songlin变成fengsonglin

    
//#####################################################################################################
    //arc test
    
    //demo2
//    __weak NSString *str = [[NSString alloc] initWithFormat:@"测试ARC"];
//    NSLog(@"%@",str); //输出是"(null)"

//  上面总结  由于str是weak，它不会持有alloc出来的NSString对象，因此这个对象由于没有有效的strong指针指向，所以在生成的同时就被销毁了。如果我们在Xcode中写了上面的代码，我们应该会得到一个警告，因为无论何时这种情况似乎都是不太可能出现的。你可以把weak换成strong来消除警告，或者直接前面什么都不写，因为ARC中默认的指针类型就是strong。


    // demo3
//    NSString *string = [NSString stringWithFormat:@"fengsonglin"];
//    string_weak_ = string;
//     NSLog(@"string: %@", string_weak_);





     //demo4
//        @autoreleasepool {
//            NSString *string = [NSString stringWithFormat:@"leichunfeng"];
//            string_weak_ = string;
//        }
//       NSLog(@"string: %@", string_weak_);
    // demo5
//        NSString *string = nil;
//        @autoreleasepool {
//            string = [NSString stringWithFormat:@"fengsonglin"];
//            string_weak_ = string;
//        }
//  NSLog(@"string: %@", string_weak_);
    
//#####################################################################################################
    
    //runtime test
//    NSLog(@"ViewController = %@ , 地址 = %p", self, &self);
//
//    id cls = [Sark class];
//    NSLog(@"%@",[Sark class]);
//    NSLog(@"Sark class = %@ 地址 = %p", cls, &cls);
//
//    void *obj = &cls;
//    NSLog(@"Void *obj = %@ 地址 = %p", obj,&obj);
//
//    [(__bridge id)obj speak];
//
//    Sark *sark = [[Sark alloc]init];
//    NSLog(@"Sark instance = %@ 地址 = %p",sark,&sark);
//
//    [sark speak];
}

//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    NSLog(@"string: %@", string_weak_);
//}
//
//- (void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    NSLog(@"string: %@", string_weak_);
//}


//- (void)dealloc{
//       NSLog(@"string: %@", string_weak_);
//}


@end
