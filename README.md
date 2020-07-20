# flutter_demo

First Flutter Demo by alfred，there are multiple demo in it。
这是我的第一个Flutter的Demo代码，内部包含了多个demo。

## Login/SignUp
have 3 screens.
First screen is a welcome screen for user to choose login or sign up.At welcome screen if user hit the login button the will shifts to the login screen,otherwise it will shifts user to the sign up screen.
有三个界面。
第一个界面是一个欢迎界面，用户可以在这里选择是登陆或者注册。如果用户点击登陆按钮，则会跳转到登陆界面，反之跳到注册界面。

# install Flutter on Mac
1. Open Terminal
1. Get SDK from [https://github.com/flutter/flutter.git](https://github.com/flutter/flutter.git)
1. run the following command to create and open .bash_profile
    ```
    touch ~/.bash_profile
    code ~/.bash_profile
    ```
1. insert the following code to .bash_profile
     ```
    export PUB_HOSTED_URL=https://pub.flutter-io.cn
    export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
    export PATH= SDKPATH/bin:$PATH
     ```
***the SDKPATH is your sdk path***  
1. run the following code to set PATH variable to the current terminal.
    ```
    source ~/.bash_profile
    ```
1. run command <code>code ~/.zshrc</code> to open z shell config file. Then append command <code>source ~/.bash_profile</code> to .zshrc file. so the flutter will add to your path permanently.
1. run command <code>flutter doctor</code> to check if there are any dependencies is not installed in your compute.According to the output describe, you will know how to perform these tasks.
# Flutter环境部署（MacBook）/

1. 从[https://github.com/flutter/flutter.git](https://github.com/flutter/flutter.git)拉取SDK。
2. 打开终端
3. 运行以下代码创建打开.bash_profile文件。
    ```
    touch ~/.bash_profile
    code ~/.bash_profile
    ```
4. 在Visual Studio Code中输入以下内容：
     ```
    export PUB_HOSTED_URL=https://pub.flutter-io.cn
    export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
    export PATH= SDKPATH/bin:$PATH
     ```

    ***其中SDKPATH为SDK的安装目录***  
5. 运行以下代码更新终端环境变量
    ```
    source ~/.bash_profile
    ```
6. 运行<code>code ~/.zshrc</code>打开终端配置文件，并输入<code>source ~/.bash_profile</code>。这样每次打开终端则会自动帮助设置环境变量。
7. 运行<code>flutter doctor</code>检查环境缺失，并根据提示的语句进行依赖安装。

## 使用的组件知识

### StatelessWidget
### Scaffold
[官方文档](https://api.flutter.dev/flutter/widgets/Column-class.html)
实现了最基础的Material Design的视觉效果。
提供了抽屉菜单，snack和sheet action的API。
如果要显示snackbar或者sheet action，需要通过当前的上下文通过Scaffold.of取得ScaffoldState，然后通过ScaffoldState.showSnackBar或scaffoldState.showBottomSheet调用。 

常用属性：
- appBar(PreferredSizeWidget)：AppBar设置
- backgroundColor(Color)：背景色
- body(Widget)：主体子内容
- bottomNavigationBar(Widget)：底部导航栏
- bottomSheet(Widget)：Sheet Action
- drawer(Widget)：抽屉
- drawerDragStartBehavior(DragStartBehavior)：抽屉拖动开始行为
- drawerEdgeDragWidth(double)：边缘出发抽屉宽度
- drawerEnableOpenDragGesture(bool)：是否可通过边缘手势打开抽屉
- floatingActionButton(Widget)：浮动按钮
- floatingActionButtonAnimator(FloatingActionButtonAnimator)：浮动按钮动画
- floatingActionButtonLocation(FloatingActionButtonLocation)：浮动按钮位置

### Container
最普通常用的容器，可以结合常见的绘制，定位和制定的组件。


常用属性：
- alignment(AlignmentGeometry)：子内容的对其方式
- child(Widget)：子内容
- color(Color)：背景色
- constraints(BoxConstraints)：子内容的限制规则
- decoration(Decoration)：容器的背景装饰
- foregroundDecoration(Decoration)：容器的前景装饰
- margin(EdgeInsetsGeometry)：外边距
- padding(EdgeInsetsGeometry)：内边距
### Column
[官方文档](https://api.flutter.dev/flutter/widgets/Column-class.html)
垂直的展示他的子节点，如果希望子节点平分可用高度，需要把子内容包含在Expended之内。
同时Column不支持滚动，如果需要支持滚动请使用ListView。
如果只有一个子内容，则尝试使用Align或者Center控制子内容的显示位置。

常用属性：  
- children(<Widget>[]):多个子内容
- crossAxisAlignment(CrossAxisAlignment):十字对其方式
- mainAxisAlignment(MainAxisAlignment):主轴对其方式
- mainAxisSize(MainAxisSize):主轴尺寸限制

注意：
当如果行内控件不足以展示全部子内容时，Row容器的右侧会显示黄色方块和红色警告条。

Row的布局算法：
1. 分配给每一个子内容（非Expended）一个Null或者为0的flex参数，表示没有高度限制和传入的宽度限制。当crossAxisAlignment设置为stretch则使用传入的最大宽度作为宽度限制。
1. 根据flex参数设置的大小，分割剩余的垂直空间给设置了flex的子内容
1. 给剩余的子内容加上所有和步骤1中一致的垂直（高度）约束。子内容的Flexible.fit属性如果是FlexFit.tight则应用严格的约束，填充满Column分配的大小。子内容的Flexible.fit如果是FlexFit.loose，则应用松散的限制，不强制填充满Column分配的大小。
1. Column的宽度是子内容的最大高度。
1. Column的高度的通过mainAxisSize属性规定。如果mainAxisSize为MainAxisSize.Max则Row的宽度为其父亲的最大宽度；如果mainAxisSize为MainAxisSize.Min则Row的宽度为其子内容宽度总和（不超过Row父亲的宽度限制）
1. 决定子内容位置的是mainAxisAlignment和crossAxisAlignment属性。
### Row
[官方文档](https://api.flutter.dev/flutter/widgets/Row-class.html)
水平的展示它的子节点。如果希望子节点平分可用宽度，需要把子内容包含在Expended之内。
同时Row不支持滚动，如果需要支持滚动请使用ListView。
如果只有一个子内容，则尝试使用Align或者Center控制子内容的显示位置。

常用属性：  
- children(<Widget>[]):多个子内容
- crossAxisAlignment(CrossAxisAlignment):十字对其方式
- mainAxisAlignment(MainAxisAlignment):主轴对其方式
- mainAxisSize(MainAxisSize):主轴尺寸限制

注意：
当如果行内控件不足以展示全部子内容时，Row容器的右侧会显示黄色方块和红色警告条。

Row的布局算法：
1. 分配给每一个子内容（非Expended）一个Null或者为0的flex参数，表示没有宽度限制和传入的高度限制。当crossAxisAlignment设置为stretch则使用传入的最大高度作为高度限制。
1. 根据flex参数设置的大小，分割剩余的水平控件给设置了flex的子内容
1. 给剩余的子内容加上所有和步骤1中一致的垂直（高度）约束。子内容的Flexible.fit属性如果是FlexFit.tight则应用严格的约束，填充满Row分配的大小。子内容的Flexible.fit如果是FlexFit.loose，则应用松散的限制，不强制填充满Row分配的大小。
1. Row的高度是子内容的最大高度。
1. Row的宽度的通过mainAxisSize属性规定。如果mainAxisSize为MainAxisSize.Max则Row的宽度为其父亲的最大宽度；如果mainAxisSize为MainAxisSize.Min则Row的宽度为其子内容宽度总和（不超过Row父亲的宽度限制）
1. 决定子内容位置的是mainAxisAlignment和crossAxisAlignment属性。
### Stack
### GestureDetector
### Icon
### TextField
### Text
### Divider
### SizedBox
### Navigator
### SingleChildScrollView