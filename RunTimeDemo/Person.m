//
//  Person.m
//  RunTimeDemo
//
//  Created by 岑志军 on 2018/3/26.
//  Copyright © 2018年 cen. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
#import "PersonNew.h"

@implementation Person

//- (void)eat{
//    NSLog(@"Person eat=======");
//}

//+ (BOOL)resolveInstanceMethod:(SEL)sel{
//
//    return [super resolveInstanceMethod:sel];
//}
//
//- (id)forwardingTargetForSelector:(SEL)aSelector{
//    if (aSelector == @selector(eat)) {
//        return [PersonNew new];
//    }
//
//    return [super forwardingTargetForSelector:aSelector];
//    return [super forwardingTargetForSelector:aSelector];
//}
//
//- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
//
//    return [super methodSignatureForSelector:aSelector];
//}

- (void)forwardInvocation:(NSInvocation *)anInvocation{

    if (anInvocation.selector == @selector(eat)) {
        [anInvocation invokeWithTarget:[PersonNew new]];
        return;
    }

    [super forwardInvocation:anInvocation];

}

- (Class)class{
   
    return [PersonNew class];
}

@end
