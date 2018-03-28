//
//  main.m
//  RunTimeDemo
//
//  Created by 岑志军 on 2018/3/26.
//  Copyright © 2018年 cen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "PersonNew.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p = [[Person alloc] init];
        
        PersonNew *p1 = [[PersonNew alloc] init];
        
        [p eat];
        
        NSLog(@"");
    }
    return 0;
}
