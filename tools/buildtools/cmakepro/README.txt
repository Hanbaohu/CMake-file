目录结构：
CMakeLists.txt文件：  顶层cmakelist文件，除非有特殊要求，否则不用修改
modules： 各个模块统一的cmakelist
projects：项目相关的放在这里，各个项目差异的部分在里面新建一个文件夹（用项目命名），参考：GWM_V71_ICU3、HOZ_EP40_MDC、WIN_MSVC等
projects/common：项目共用的部分，比如：编译参数、路径、模块定义等



1. 修改模块：moduels里面只有修改源文件、头文件时才需要改动，不然项目是在projects对应文件夹里面做修改的
2. 新增模块： a. 在modules里面按实际工程路径创建cmakelsit，内容参考其它模块； b. 在projects里面创建一个项目文件夹，内容参考GWM_V71_ICU3、HOZ_EP40_MDC等目录
3. 结果输出在outpout里面

cmake平台化原则：
项目平台相关的东西，在projects目录里面区分，不影响其它项目平台！



注：
改动modules目录内容时，请确认已经理解了内部组成原理，避免出现修改错误造成其它项目平台无法编译！最好在其它项目平台上，用docker环境也编译一次。



运行：
cmake -DCMAKE_BUILD_TYPE=<Debug/Release> -DCMAKE_PROJECT=(projects目录下面的文件夹名字) ..
长城qnx:
1. mkdir build
2. source projects/GWM_V71_ICU3/qnx_env.sh
3. cd build
4. cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_PROJECT=GWM_V71_ICU3 ..
合众：
1. mkdir build; cd build
2. cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_PROJECT=HOZ_EP40_MDC ..
均胜：
1. mkdir build; cd build
2. cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_PROJECT=JOY_ES6_3J3 ..



项目代号参考：https://dylny39pmo.feishu.cn/wiki/wikcnI8izggrdYFeqYZ5Vzm7FcD