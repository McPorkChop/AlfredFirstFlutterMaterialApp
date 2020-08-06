# flutter_demo

First Flutter Demo by alfred，there are multiple demo in it。
这是我的第一个Flutter的Demo代码，内部包含了多个demo。

## Login/SignUp
have 3 screens.
First screen is a welcome screen for user to choose login or sign up.At welcome screen if user hit the login button the will shifts to the login screen,otherwise it will shifts user to the sign up screen.
有三个界面。
第一个界面是一个欢迎界面，用户可以在这里选择是登陆或者注册。如果用户点击登陆按钮，则会跳转到登陆界面，反之跳到注册界面。

## EShop
have 2 screens.
First you will see a goods list,when user hit the goods item, it will shifts to detail screen by hero animation.
有两个界面。
首先进入的是商品列表页，当用户点击商品后跳转至商品详情页。Demo运用了Hero动画。

## Movie App
have 2 screens.
First you will see a movie list that only contains 3 movies.User can switch the card to check other movies.when user hit the card it will shifts to the detail screen that show more information about the movie.
有两个界面。
首先进入的是商品列表页，当用户点击商品后跳转至商品详情页。Demo运用了Hero动画。


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
无状态的Widget。参数一旦传递则不能更改。当不需要依赖父容器时，优先采用这个Widget。

### StatefulWidget
有状态的Widget，需要先定义一个类继承自StateFulWidget，且类中必须重写createState方法，该方法返回一个继承自State的类的实例。界面可以动态渲染。

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

容器首先渲染padding，然后应用额外限制(constraints)到已经渲染了padding的内容上（如果高宽设置不为空，高宽合并到constraints）。最后容器会被包裹在margin的空白内容中。

在绘制过程中，容器先应用传入的transform，然后基于padding绘制背景(decoration)，之后绘制他的子内容，最后基于padding绘制前景(foregroundDecoration)。

没有子内容的容器会尽量大的去绘制容器，除非除非配置的或父内容的尺寸限制(constraints)。
在配置了constraints的情况下，会尽量的小的绘制容器，如果容器包含子内容，则会根据子内容的大小进行调整。除非构造函数中配置了width、height和constrain。

常用属性：
- alignment(AlignmentGeometry)：子内容的对其方式
- child(Widget)：子内容
- color(Color)：背景色
- constraints(BoxConstraints)：子内容的限制规则
- decoration(Decoration)：容器的背景装饰
- foregroundDecoration(Decoration)：容器的前景装饰
- margin(EdgeInsetsGeometry)：外边距
- padding(EdgeInsetsGeometry)：内边距

布局行为：
容器包含了若干其他不容的小部件及其不容的布局，所以容器的布局行为会有些复杂。
总之容器尝试去有序的：
- 渲染对其方式
- 结合子内容调整自己的大小
- 渲染宽高
- 限制子内容
- 扩充自己去适应父容器
- 尽可能的小

更加具体的内容例如：
- 如果部件没有子内容，没有设置宽高，没有设置限制，同时他的父容器无限制，则容器会尽可能的小。
- 如果部件没有子内容，也没有设置对其方式，但是设置了宽高或者constraints，则容器将会结合constraints和父容器的constraints，尽可能的小。
- 如果部件没有子内容，没有设置宽高，没有设置constraints，没有设置对其方式，但是父容器提供了constraint，则容器铺满父容器限制的大小。
- 如果部件配置了对其方式，而且父容器未提供constraints，则容器会调整大小到刚好包裹
子内容。
- 如果部件配置了对其方式，而且父容器配置了constraints，则容器会尝试铺满父容器，同时根据对其方式排列子内容。
- 除非部件有一个子内容，但是没有设置宽高、constraints和对其方式，则容器会将父容器的constraints应用到子内容，同时使容器的大小包裹子内容。
- 容器的margin和padding属性也会影响到布局。

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
如果只有一个子内容，则尝试使用Align或者Center部件控制子内容的显示位置。

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
Stack是一个可以让子内容相对其定位的部件。如果要快速的叠加若干个部件，那么Stack是最合适的。
Stack的子内容要么是定位的，要么是非定位的。定位的子内容被包裹在Positioned部件中，至少配置了一个属性。
Stack的大小会包裹住所有非定位的子内容，非定位的子内容会根据alignment属性（默认是top-left）定位。而定位的子内容会相对于Stack，根据top,left,bottom,right定位。
Stack会根据children的顺序，以栈的顺序渲染。如果你想更改children渲染的顺序，可以尝试重新排列children顺序，同时建议给每一个子内容定义一个非空的key。当定义了非空的key时，flutter在重新排列children顺序时会移动对应子内容到新位置，而不是在新位置去重新创建子内容。
如果要以特殊的模板布局多个子内容，或是要创建自定义的布局管理，可能使用CustomMultiChildLayout代替较好。特别是，使用Stack时，不能相对于子内容的大小或Stack自己children的个数来定位子内容。

常用属性：
- children(List<Widget>):子内容数组
- alignment(AlignmentGeometry):对其方式
- fit(StackFit):非定位子内容的尺寸限制。
- OverFlow(OverFlow):超出Stack尺寸的子内容的显示方式
- textDirection(TextDirection):文字方形

Stack布局算法：

### GestureDetector
### InkWell
是一个矩形的区域，用于相应Material Design的触控操作。当用户点击InkWell的区域时，会自动渲染一个MaterialDesign的水波纹效果。
水波纹不会超出InkWell的范围，如果希望不要裁剪水波纹效果，可以使用InkResponse。
InkWell的父内容必须有一个Material的部件。水波纹的动画最终实际上会被渲染在InkWell最近的Material父内容中。（这样才符合Material Design的理念）。
使用这个部件时，可以在Build函数的一开始调用debugCheckHasMaterial(context)检查是否有效。


常用属性：
- borderRadius(BorderRadius):水波纹边界圆角
- child(Widget):子内容
- radius(double):水波纹辐射大小
- splashColor(Color):水波纹颜色
- containedInkWell(bool):水波纹是否可以超出容器
- enableFeedback(bool):检测到交互时，是否有声音或者震动提示
- onTap(Function)
- onHover(Function)
- hoverColor(Color):Hover状态的颜色

### Icon
[官方文档](https://api.flutter.dev/flutter/widgets/Icon-class.html)
是一个图形图标部件，根据IconData定义的字体图标信息绘制。可以使用flutter内置的Material风格的Icons。
Icon不是一个可交互的部件，如果希望构建一个可交互的Icon，建议使用IconButton。
注意：非方形的图标渲染可能出错。

常用属性：
- color(Color):图标颜色
- icon(IconData):图标
- semanticLabel(String):图标的描述。在障碍模式下有效。
- size(double):尺寸
- textDirection(TextDirection):方向
### TextField
[官方文档](https://api.flutter.dev/flutter/material/TextField-class.html)
这个部件允许用户输入文字。
当用户修改了内容时，会回调onChanged函数。当用户表示输入完毕，则会回调onSubmitted回调函数。大多数时候onSubmitted足够处理响应用户输。
当用户完成输入时，onEditingComplete回调函数也会被调用，和onSubmitted不同的时他会有一个默认行为去更新text controller并终止键盘的focus。

如果要控制TextField中显示的内容，可以使用controller属性指定一个controller。controller不仅可以TextField的显示内容，还可以控制内容的选择或者样式等。如果需要读取输入的值也可以通过controller.text获取。
当controller不再需要时，一定要调用dispose。

在Material的默认情况下，TextField会有一个下边框，可以通过decoration属性更改。
如果要继承在FormField部件中，优先使用TextFormField

常用属性：
- controller(TextEditingController):指定的controller
- cursorColor(Color):光标颜色
- cursorRadius(Radius):光标的圆角
- cursorWidth(double):光标宽度
- decoration(InputDecoration):样式制定
- enable(bool):启用/禁用
- expands(bool):是否高度铺满父内容
- keyboardType(TextInputType):键盘类型
- obscureText(bool):是否隐藏输入内容
- onChanged(Function):内容输入回调
- onSubmitted(Function):内容改变回调
- onTap(Function):点击回调
- readOnly(bool):只读
- style(TextStyle):输入内容的样式
- textAlign(TextAlign):内容对其方式
- textAlignVertical(TextAlignVertical):内容垂直对其方式
- toolbarOptions(ToolbarOptions):定制工具条

### Text
[官方文档](https://api.flutter.dev/flutter/widgets/Text-class.html)
显示一段单一样式的文字，且显示的文字可以被断行。
当没有定义style属性时，Text会从使用最近的父内容的DefaultTextStyle。
如果设置style的TextStyle.inherit为true，则给定的样式会与最近的父内容的DefaultTextStyle合并。

使用Text.rich构造函数的话，Text可以利用TextSpan显示一段有不同的格式的文字。RichText部件也可以达到相同效果。

如果想要通过Text交互，可以将其包裹在GestureDetector部件中。但是在MaterialDesign的应用中，建议使用FlatButton部件替代。如果FlatButton不适用，则可以使用InkWell替代GestureDetector。

如果要在一段文字的某一部分进行交互操作，使用RichText部件并指定TapGestureRecognized到需要交互的TextSpan的recognized属性上。

常用属性：
- data(String):显示的文字
- locale(Locale):本地化配置
- maxLines(int):最多显示行数
- overflow(TextOverflow):文字超出的显示方式
- style(TextStyle):文字样式
- textAlign(TextAlign):文字对其方式
- textDirection(TextDirection):文字显示方式

### Divider
### SizedBox
[官方文档](https://api.flutter.dev/flutter/widgets/SizedBox-class.html)
是一个指定大小的容器。

如果定义了子内容，则会强制子内容拥有SizedBox的宽高。
如果SizedBox没有定义宽高，则会包裹子内容，但是如果子内容的大小取决于父内容的大小，则SizedBox的大小必须提供。如果没有子内容，SizedBox则会尝试去匹配父内容的尺寸限制。

如果没有给SizedBox宽高且没有子内容，则会默认宽高皆为0。

SizedBox.expand这个构造函数可以构建一个宽高匹配父内容的SizedBox，效果等同与设置Width和Height为double.infinity。

常用属性：
- height(double)
- width(double)
- child(Widget)

### Navigator
### SingleChildScrollView
### Hero
### FloatingActionButton
### RaisedButton
[官方文档](https://api.flutter.dev/flutter/widgets/Text-class.html)
### AspectRatio
### PageController
### PageView
### Spacer
