//
//  main.m
//  ARCTest
//
//  Created by admin on 2018/12/24.
//  Copyright © 2018 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <objc/runtime.h>

int main(int argc, char * argv[]) {
    @autoreleasepool {
//        NSNumber *number1 = @1;
//        NSNumber *number2 = @2;
//        NSNumber *number3 = @3;
//        NSNumber *numberFFFF = @(0xFFFF);
//
//        NSLog(@"number1 pointer is %p", number1);
//        NSLog(@"number2 pointer is %p", number2);
//        NSLog(@"number3 pointer is %p", number3);
//        NSLog(@"numberffff pointer is %p", numberFFFF);
//
//        NSString *a = @"a";
//        NSString *b = [[a mutableCopy] copy];
//        NSLog(@"%p %p %@", a, b, object_getClass(b));
//        NSMutableString *mutable = [NSMutableString string];
//        NSString *immutable;
//        char c = 'a';
//        do {
//            [mutable appendFormat: @"%c", c++];
//            immutable = [mutable copy];
//            NSLog(@"0x6l%@ %@ %@",immutable, immutable, object_getClass(immutable));
//        } while(((uintptr_t)immutable & 1) == 1);
        
//     NSMutableString * muStr2 = [NSMutableString stringWithString:@"1"];
//        for(int i=0; i<20; i+=1){
//            NSNumber *number = @([muStr2 longLongValue]);
//            NSLog(@"%@, %p", [number class], number);
//            [muStr2 appendString:@"1"];
//        }
//        

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
