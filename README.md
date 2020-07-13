# flutter_demo

First Flutter Demo by alfred，have 3 screens.
First screen is a welcome screen for user to choose login or sign up.At welcome screen if user hit the login button the will shifts to the login screen,otherwise it will shifts user to the sign up screen.

这是我的第一个Flutter的Demo代码，有三个界面。
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

## 使用的组件

### StatelessWidget
### Scaffold
### Container
### Column
### Row
### Stack
### GestureDetector
### Icon
### TextField
### Divider
### SizedBox
### Navigator
### SingleChildScrollView