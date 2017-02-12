# LovePlay
## 背景：

* 为了对APP性能优化，想要学习使用ASyncDisplayKit，这也是最初建立这个项目的源头和动力。
* 国内对于ASDK进行讲解分析的文章不少，但是真正用于项目，或比较完整的开源项目还是不多。于是在网上四处寻觅，终于找到了 [**LovePlayNews**](https://github.com/12207480/LovePlayNews)，作者是个牛人，精仿 **网易爱玩** APP，项目结构清晰，用于学习是个非常不错的选择。
* 为什么又会有ASDK版本以外的版本？

```
1. 网易爱玩 是个非常有代表性的项目，不管是模块划分，还是控件布局，中规中矩，没有太多酷炫的功能（精仿酷炫的APP，UI上会浪费太多太多时间和精力，很多情况下这，这都偏离了我们的目的），符合我们日常开发中的大部分情况，实在是练手最佳APP之一！！！
2. 同时，通过  LovePlayNews 中的API可以看到，网易提供的接口和数据非常清晰，也没有对开发者做过多限制（安全、验证、加密等），不但可以更方便地用于开发，也可以学习大厂API的优点。
3. 正是基于 网易爱玩 以上特点，极大地节约了对接口理解、模块划分等花费的时间，使我们有更多精力投入到功能开发和学习当中。
4. 对于 RAC、组件化 等框架或思想层面的学习，有时需要做一个比较完整的项目（也可以说：业务or需求），才能有效提升我们更进一步的理解。
5. 所以在练习完ASDK项目后，我觉得有必要把自己学习 RAC、组件化 的知识融于项目，再次复习加深理解。
6. 解析下个人需要 UIKit版 的原因，ASDK毕竟是一个比较重量级的框架，项目对其依赖度较大。在开发 RAC版、组件化版 等版本时，不想造成太多干扰、增加不必要的学习成本，看官各取所需就好。 
```

## 建议：

* **UIKit版** 和 **ASDK版** 任意完成一个版本，另一个版本，copy一份代码修改起来是非常快的。如果目标不是学习 **ASDK**，直接基于 **UIKit版** 进行其它的练习更好。
* 当前项目中，我只取了 **LovePlayNews** 部分界面练习，减少练手项目不必要的时间浪费，但又保留了相对的完整性。比如：**精选** 模块中就需要依赖 **资讯** 模块的 **新闻列表和新闻详情**。这是实施 **组件化** 过程中会经常遇到的问题，我们加以练习。
* 当然，看官也可根据实际情况进行增删。比如：去掉 **社区** 模块。

## 规划：

该项目是在工作之余进行，所以更新不定期，但会尽量抓紧时间完成。

将会有如下几个（OC）版本：

#### ASDK版：基于Facebook开源的ASyncDisplayKit框架

* SDK：[**AsyncDisplayKit**](https://github.com/facebook/AsyncDisplayKit)
* 关于ASDK文章：[新大陆：AsyncDisplayKit](https://segmentfault.com/a/1190000007991853)

#### UIKit版：原生控件

* 自动布局： [**SDAutoLayout**](https://github.com/gsdios/SDAutoLayout)


* 为什么选择 **SDAutoLayout** ？

```
1. 因为其他自动布局框架解决cell自适应高度过于麻烦（比如：Masonry + UITableView-FDTemplateLayoutCell），尤其是在尝到 ASDK 布局带来的便利后，让我转向了一直关注但没有机会使用的 SDAutoLayout，实际使用过程中，SDAutoLayout 的语法使用易读、易懂、易维护、易上手，提供了非常简单（一句话）的方法，解决cell自适应高度问题。
2. 轻量级，对比masonry真的是非常非常轻量级。我选择第三方库的要求：能解决问题 + 易用、易维护 + 轻量级，功能如此强大却如此简洁，完全满足了我对第三方库的所有幻想。
```

#### RAC版：使用 [**ReactiveCocoa**](https://github.com/ReactiveCocoa/ReactiveCocoa) 

* RAC V2.5：[V2.5](https://github.com/ReactiveCocoa/ReactiveCocoa/releases/tag/v2.5)

#### 组件化版：基于casa大神的组件化方案

* casa大神组件化方案文章：[iOS应用架构谈 组件化方案](http://casatwy.com/iOS-Modulization.html) + [在现有工程中实施基于CTMediator的组件化方案](http://casatwy.com/modulization_in_action.html)

#### …...

后续有时间，将会使用swift重写以上版本

## 致谢

网易出品，必属精品： http://play.163.com

[**LovePlayNews**](https://github.com/12207480/LovePlayNews) 

[**AsyncDisplayKit**](https://github.com/facebook/AsyncDisplayKit)

[**SDAutoLayout**](https://github.com/gsdios/SDAutoLayout)

[**ReactiveCocoa**](https://github.com/ReactiveCocoa/ReactiveCocoa)

http://casatwy.com