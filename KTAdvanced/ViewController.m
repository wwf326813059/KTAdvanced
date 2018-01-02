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
     队列(负责调度任务)
     串行队列,并发队列
     
     
     
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
