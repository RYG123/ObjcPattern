# SingletonPattern
  这是我的第一个设计模式，单例模式，主要是用来当作object c练手。
  
  主要是几个方面：<br>
   1.m文件和h文件的使用<br>
   2.文件导入的问题<br>
   
   ## 详情:
   ### 1.h文件 
   h文件的作用就是把一些属性和方法进行第一步定义，然后可以通过使用关键字使用来对<b>"属性"</b>进行特殊声明，就好像 copy，weak 等关键字一样.<br><br>    copy关键字，对于声明的属性，可以进行复制（从堆的角度来说，就是，可以通过拷贝内容并生成一个新的堆，然后供别的对象使用）,copy<b>"在可变的对象中"</b>使用可以防止原有属性被修改（因为是引用调用）。<br><br>
   weak关键字，可以防止内存的循环引用，循环引用会导致内存泄漏，因为ARC无法回收（因为堆之间互相调用，所以不能清楚）<br><br>
   在h文件中，声明的属性默认情况下会生成实例变量和调用器方法，可以用dynamic关键字,让调用器方法不生成，然后自己手动写调用器方法进行修改。<br><br>
   在h文件中必须声明需要使用的方法（不需要方法体)而且-是对象方法，+是类方法.
   ### m文件
   首先要导入对应的h文件 例： #import "SinglePatternText.h"
        
     @implementation SingletonTest 

      static SingletonTest* _instance = nil;  //nil相当于java的null

        +(SingletonTest*)getInstance  //这里是在点h文件的声明的方法的实现。要是不在m文件中声明，会有警告
        {
            @synchronized (self.class) {  //@synchronized加锁，防止多个同时访问，然后造成差异。
                if(_instance == nil){  
                    _instance = [[self.class alloc] init];
                }
                return _instance;
            }
        }

    @end
    
    
   ### 2.文件导入的问题 
   在main文件中，导入的应该是h文件，而不是m文件
   
    #import <Foundation/Foundation.h>
    #import "SinglePatternText.h"  //导入h文件

    int main(int argc, const char * argv[]) {

        @autoreleasepool {
            // insert code here...
            NSLog(@"Hello, World!");
            SingletonTest* single1 = [SingletonTest getInstance];  //因为是类方法，所以[SingletonTest getInstance]而不是[single1 getInstance]
            NSLog(@"single1的值:%@",single1); 

            SingletonTest* single2 = [SingletonTest getInstance]; 
            NSLog(@"single2的值:%@",single2);

            NSLog(@"single1和single2相等吗:%d",single1 == single2);
            NSLog(@"single1和single2相等吗:%d",[single2 isNotEqualTo:single1]);
        }
        return 0;
    }
    
  ### 3.输出结果
  
      2019-12-07 09:35:29.489663+0800 SinglePattern[759:26707] Hello, World!
      2019-12-07 09:35:29.490695+0800 SinglePattern[759:26707] single1的值:<SingletonTest: 0x10281b630>
      2019-12-07 09:35:29.490933+0800 SinglePattern[759:26707] single2的值:<SingletonTest: 0x10281b630>
      2019-12-07 09:35:29.491028+0800 SinglePattern[759:26707] single1和single2相等吗:1
      2019-12-07 09:35:29.491156+0800 SinglePattern[759:26707] single1和single2相等吗:0 //这里用的是isNotEqualTo方法
      
      因为是单例模式，所以输出的堆堆让是相等的。
