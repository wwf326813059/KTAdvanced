//
//  ViewController.m
//  KTAdvanced
//
//  Created by Dream.Winston on 2017/12/1.
//  Copyright © 2017年 筑梦师--Winston. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
#pragma mark -----EveryDay
    /*
     更新
     晨跑7点-8点
     金山词霸8点-8点半
     iOS进阶视频 8点半-10点半
     做饭 11点半-12点
     计算机基础书籍 中午1点-中午2点
     锻炼 2点-2点半
     iOS进阶视频 2点半-5点半。
     
     
     做饭 6点-6点半
     知乎 6点半-6点50.
     简书 6点50 -7点10分
     金山词霸 7点10分 -7点40分
     w3cSchool 7点40 -8点10分
     
     夜跑 8点半 -9点半
     看美剧 9点半到11点
     
     
     github每日提交
     每周日 一篇简书
     
     
     */
    
#pragma mark -----限时任务
    /*
     1.学习python
     2.学习计算机书籍
     3.学习iOS11适配
     4.学习英语
     5.锻炼身体
     6.每日关注 热点
     7.每日关注 应用 iOS
     
     
     */
    
#pragma mark -----任务
    /*
     1.学习git
     2.阅读 计算机网络
     3.阅读 计算机组成原理
     4.阅读 计算机应用
     5.学习markdown。
     
     
     历史遗留
     1.养成良好的书写代码习惯;
     2.学习hybrid app开发模式;
     3.学习xmpp即时通讯协议.
     4,学习JavaScript语法;
     5.试着理解YYKit;
     6.学习SVN;
     7.了解python
     8.了解sketch软件;
     9.了解oracle 和跨平台;
     10.UIBlurEffect UIVisualEffectView
     11.观看WWDC大会 倒序2016-2012
     
     */

#pragma mark ----- iOS进阶学习笔记
    
#pragma mark ----- 多线程
    
    /*
     进程  进程是指在系统中 正在运行的一个应用程序
     每个进程间是独立的,每个进程均在运行其专用而受保护的空间内.
     
     线程  一个进程想要执行任务 必须得有线程.(每一个进程至少有一个线程(主线程)).
     
     一个线程中的任务是串行执行的.
    
     一个进程中 可以开启多线程,每条线程可以执行不同的任务.
     
     线程开多了耗电,
     同一时间 CPU只能处理一条线程
     多线程执行时 其实是CPU来回切换造成了多线程并发执行的假象
     线程过多会导致CPU过载
     
     多线程的优点,能够适当提高程序的执行效率,提高资源利用率
     
     多线程的缺点, 创建线程是有开销的,iOS的主要成本:内核数据结构,栈空间,可以使用setStackSize设置
     线程越多开销越大.
     
     主线程:iOS每一个应用默认开启一个主线程(UI线程)
     比较耗时的操作不要放在主线程 ,会引起卡顿.
     耗时操作应该放在分线程.
     
     多线程实现方案
     {
     pthread  是属于 POSIX 多线程开发框架  属于C语言实现的
     NSThread 简单易用 可直接操作线程对象 OC语言的 偶尔使用
     GCD    替代NSThread 经常使用 充分利用多核
     NSOperation 基于GCD 比GCD多一些功能 经常使用
     }
     
     NSThread 线程状态
     新建一个线程  放在线程调度池
     调用start 方法后  就变为就绪状态.
     当CPU来回调度时 ,调度中时  是运行状态.
     当调用 sleep方法或者同步锁时 会使这个线程阻塞.
     阻塞后可以变回就绪状态.
     当执行异常或者退出  将会进入死亡状态
     
     主线程调用exit方法  就会被杀死,但是app不会挂掉.
     NSThread 可以用name属性命名.常用于崩溃反馈.
     可以设置优先级
     
     资源共享 @synchronized 互斥锁.同一时间  只有一条线程执行
     互斥锁范围应该尽量小 范围大效率就差
     
     
     原子属性 先把文件保存在一个临时文件中 ,等全部写入以后,再改名.
     atomic 原子性 ,保证这个属性的安全性(线程安全).针对多线程设计的.
     nonatomic 非原子属性.
     在普通开发中,不会被多线程访问的属性 声明为nonatomic 就可以了
     原子属性  保证多线程访问这个对象时 保证同一时间只有一个线程能够执行.
     
     原子属性 当中会自带一个自旋锁.
     自旋锁和互斥锁的区别:
     自旋锁是用死循环的方式锁住.
     
     在多个线程进行读写操作时,仍然保证数据正确 叫做线程安全.
     
     所有UI的操作都放在主线程上执行.
     UIKit框架都是线程不安全的.
     
     iOS开发建议
     所有属性都声明 nonatomic
     尽量避免多线程抢夺同一块资源
     尽量将加锁资源抢夺交给服务端(做平台的,抢货类型的).
     
     12306已经做得很好了  他支持全国 同一时刻很多用户访问到数据.
     
     
     物理层是网线,网线里是电流,电流分为高频低频 所以数据以二进制传输.
     
     
     
     

     */
    
#pragma mark -----GCD
    /*
     GCD 全程 Grand Central Dispatch
     纯C语言写的  提供了非常强大的函数
     iOS4.0之后推出的
     
     GCD是苹果公司为多核的并行运算提出的解决方案
     GCD是会自动利用更多的CPU内核
     GCD会自动管理线程的生命周期,
     程序员只需要告诉GCD想要执行什么任务,不需要写管理线程的代码.
     
     GCD只需要关心队列和任务.
     
     1.定制任务
     2.将任务放在队列里
     
     GCD会自动将队列中的任务取出,放到对应的线程中执行
     任务的取出原则遵守FIFO先进先出,后进后出的原则.
     
     GCD执行任务的方法有两种
     同步执行:一个任务没有结束,就不会执行下一个任务
     异步执行:不用等待任务执行完毕,就会执行下一个任务.
     
     dispatch_queue_t q =dispatch_get_global_queue(0,0);
     创建一个队列
     
     void(^task)() =^{
        任务代码
     };
     创建任务
     
     dispatch_sync(q ,task);
     同步执行
     
     
     
     dispatch_queue_t q =dispatch_get_global_queue(0,0);
     创建一个队列
     
     void(^task)() =^{
     任务代码
     };
     创建任务
     
     dispatch_async(q ,task);
     异步执行
     
     dispatch_get_main_queue() 主队列 只有一个
     
     任务
     同步执行,异步执行
     同步执行:不会去取子线程
     异步执行:只要有任务,就会去取子线程
     队列(负责调度任务)
     串行队列,并发队列
     
     dispatch_queue_t q =dispatch_queue_t q dispatch_queue_create(<#const char * _Nullable label#>, <#dispatch_queue_attr_t  _Nullable attr#>)
     1.队列名称
     2.dispatch_queue_attr_t 队列属性
     
     DISPATCH_QUEUE_SERIAL串行队列
     DISPATCH_QUEUE_CONCURRENT并行队列
     
     串行队列  同步任务
     串行队列不会创建子线程
     
     串行队列  异步任务
     创建一个子线程
     
     并发队列  异步执行
     一个任务开启一条线程.
     
     并发队列  同步执行.
     都会顺序执行 不会开启分线程
     
     开不开线程,取决于执行任务的函数,同步不开,异步才能开.
     开几条线程取决于队列. 串行开一条,并发开多条.
     
     
     队列里放任务, 如果先放同步任务 ,那么异步任务要等待.
     
     队列里的异步任务 要等待同步任务执行完毕,才能执行异步任务.
     
     全局队列参数
     1.涉及到系统适配
     iOS7 调度的优先级.
     
     #define DISPATCH_QUEUE_PRIORITY_HIGH 2
     #define DISPATCH_QUEUE_PRIORITY_DEFAULT 0
     #define DISPATCH_QUEUE_PRIORITY_LOW (-2)
     #define DISPATCH_QUEUE_PRIORITY_BACKGROUND INT16_MIN
     
     
     iOS8  服务质量.
     _QOS_ENUM(qos_class, unsigned int,
     QOS_CLASS_USER_INTERACTIVE  用户交互
     __QOS_CLASS_AVAILABLE(macos(10.10), ios(8.0)) = 0x21,
     QOS_CLASS_USER_INITIATED 用户需要的
     __QOS_CLASS_AVAILABLE(macos(10.10), ios(8.0)) = 0x19,
     QOS_CLASS_DEFAULT 默认的
     __QOS_CLASS_AVAILABLE(macos(10.10), ios(8.0)) = 0x15,
     QOS_CLASS_UTILITY  使用工具
     __QOS_CLASS_AVAILABLE(macos(10.10), ios(8.0)) = 0x11,
     QOS_CLASS_BACKGROUND 后台
     __QOS_CLASS_AVAILABLE(macos(10.10), ios(8.0)) = 0x09,
     QOS_CLASS_UNSPECIFIED 没有指定优先级
     __QOS_CLASS_AVAILABLE(macos(10.10), ios(8.0)) = 0x00,
     
     全局队列和并发队列
     
     1.名称,并发队列可以取名字,适用于企业开发
     
     全局队列:并发 调度多个线程  执行效率高 费电
     串行队列:执行效率低 省电
     
     wifi可以多用并发.
     流量少用.
     
     延时执行是异步执行
     dispatch_after(<#dispatch_time_t when#>, <#dispatch_queue_t  _Nonnull queue#>, <#^(void)block#>)
     
     
     一次执行 不要用互斥锁 效率低 自带线程安全
     dispatch_once(<#dispatch_once_t * _Nonnull predicate#>, <#^(void)block#>)
     
     调度组
     dispatch_group_async(<#dispatch_group_t  _Nonnull group#>, <#dispatch_queue_t  _Nonnull queue#>, <#^(void)block#>)
     
     组调度完毕 通知
      dispatch_group_notify(<#dispatch_group_t  _Nonnull group#>, <#dispatch_queue_t  _Nonnull queue#>, <#^(void)block#>)
     用一个调度组  可以监听全局队列的任务,主队列去执行最后的任务.
     
     
     主队列是专门负责主线程上调度任务的队列  不会开线程
     
     同步执行的任务  这句话不执行完毕就不能执行下一个,阻塞式
     
     使用sync函数 往当前串行队列中添加任务,会卡住当前的串行队列.
     */
    
    
#pragma mark ----- NSOperation
    /*
     特点:是一个抽象类 不能直接使用
     
     目的:定义子类共用的属性和方法.
     
     子类:NSInvocationOperation
         NSBlockOperation
     
     
     NSInvocationOperation * op =[[NSInvocationOperation alloc]initWithTarget:self selector:@selector(selector) object:@""];
     start  在当前线程执行调度方法.
     [op start];
     
     
    NSOperationQueue * q =[[NSOperationQueue alloc]init];
    [q addOperation:op];
     
     将操作添加到队列  会自动异步执行调度方法
     
     NSBlockOperation * op =[NSBlockOperation blockOperationWithBlock:^{
     <#code#>
     }];
     所有代码写在一起  便于维护
     
     NSOperation 本质上就是对GCD 的面向对象的封装
     
     
     更简单的方法
     NSOperationQueue * q =[[NSOperationQueue alloc]init];
     [q addOperationWithBlock:^{
     <#code#>
     }];
     
     在实际开发中  队列每次分配都比较浪费
     队列使用懒加载方式进行使用
     
    [NSOperationQueue mainQueue];主队列  回调 刷新ui
     
     
     GCD 在iOS4.0推出,针对多核处理器做的优化的并发技术,是C语言的.
     将任务添加到队列(串行,并发) 并且指定同步异步执行
     提供了一些NSOperation 不具备的功能
     一次执行 延迟执行  调度组
     
     NSOperation 是iOS2.0推出的,
     讲异步执行的任务 添加到并发队列 并立刻执行.
     
     提供了  最大并发线程数,队列的暂停继续
     取消所有操作,指定操作间的依赖关系.
     
     [NSOperationQueue mainQueue].maxConcurrentOperationCount=2;
    设置最大线程数
     
     */
    
    
    

    
    
    
  
    
   
#pragma mark ----- Runloop
    /*
     保证程序不退出
     负责监听事件,监听iOS当中的所有事件, 触摸,定时器,网络事件.
     区分模式  默认会阻塞定时器
     */
    
    
#pragma mark ----- iOS项目开发流程
    
#pragma mark ----- app开发流程
    
    /*
     1.新建Xcode项目
     2.搭建项目架构
     3.iOS 11 适配
     
     iOS 交互手册
     https://developer.apple.com/ios/human-interface-guidelines/overview/themes/
     Desgin+code
     https://designcode.io/swift4-xcode9
     
     4.
     
     */
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
