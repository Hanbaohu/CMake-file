# SPACEOS 

# 符合人类驾驶习惯的AVP项目(YangJian)

Welcome to SPACEOS's Gitlab page!

SPACEOS is a high performance, flexible architecture which accelerates the development, testing, and deployment of Autonomous Vehicles.

Security, Platform, Autonomous, Connectivity, Embedded !


## Table of Contents
1. [Release Notes](#release-notes)
2. [Getting Started](#getting-started)
3. [Prerequisites](#prerequisites)
4. [Configuration](#configuration)
5. [Architecture](#architecture)
6. [Rules](#rules)


## Release Notes
行泊一体功能版本 614

发布日期: 20220614

### Date: 2022-6-14
* New Feature

    * HAVP 流动库位泊车
    * HAVP 巡航过程使用ACC控制稳定（8927）车速提升到10km/h
    * 巡航过程中routing出弯速度自动减速
    * PLD拖拽库位功能
    * TSML超声定位，闸机定位
    * 视觉感知增加错误码输出

* Bugfix

    * 解决8927 ACC模式速度提升后方向盘失控
    * 解决HMIHUB模块大块内存发送以及HMI大块内存copy导致的性能下降
    * H5 显示BUG（箭头、空UI）
    * parkoccupy 描画内存越界
    * 修复状态机的一些BUG
    * 修复规控模块部分内存越界问题

* Normal

    * ComDR新增纯脉冲里程计方案
    * tracking 代码清理
    * SEG+融合FS 统一宏定义
    * 融合FS可配置


下一次发布日期: 20220621

## Getting Started

1. vs2019 打开 spaceos_launcher\port\SpaceOS.sln
2. 如果弹出重定向项目提示框，除qt_window、trainedparking、libcaffe和SEG工程不进行重定向外，其他项目选择windows SDK版本 10.0， 平台工具集升级到v142，点击确定
3. 活动解决方案配置为Release, 活动解决方案平台为x64
4. 重新生成解决方案
5. 运行程序

## Prerequisites
1. vs 2019
2. vs 2013
3. cuda 10.1

## Configuration
* SPACEOS使用手册

   请翻阅 docs/SpaceOS使用手册.pptx


## Rules

* **分支命名规则:**
    * 新增功能：  Feature_***
    * 修复bug：   Bugfix_***
    * 测试版本：  Test_***

* **代码上传规则:**  
    * 本地分支merge master的最新代码
    * 上传本地分支
    * 提出“合并请求”

* **Commit提交规则：**
    * [Bugfix][模块名]:提交的代码是修复teambition中的缺陷，其中XXX填入teambition上的缺陷号
    * [Feature][模块名]提交的代码是一个新的功能，其中XXX填入teambition上的任务号
    * [Normal][模块名]: 其他类型的代码提交，例如解决冲突或者上传错误等。

* **合并请求中的Description填写规则：**
    * 分支修改内容： 概述该分支修改内容

    * [yes/no] 分支名称符合命名规范
    * [yes/no] 分支中commit提交信息编写符合命名规范
    * [yes/no] 分支代码合入了主干分支最新代码
    * [yes/no] ]分支代码可以正常编译通过
    * [yes/no] 分支代码能够正常运行至少2分钟
    * [yes/no] 分支代码已经删除分支中的调试代码或调试信息
    * [yes/no]分支代码完成了离线测试
    * [yes/no]是否有改动过其它模块的代码
    * [yes/no]若有改动过其它模块的代码，是否对应模块的Owner沟通过
    * [yes/no]分支代码完成了上车验证


* **模块与配置CheckList：**
    * /modl=fw_sdk.dll
    * /modl=fw_bev.dll
    * /modl=can.dll
    * /modl=hdmiCamCapture.dll
    * /modl=mp4_playback.dll
    * /modl=comdr.dll
    * /modl=spacenet.dll
    * /modl=vision_perception.dll
    * /modl=PLD.dll
    * /modl=segparse.dll
    * /modl=mapservice.dll
    * /modl=spacemap.dll
    * /modl=network_connector.dll
    * /modl=parkoccupy.dll
    * /modl=SP_PK_VehicleControl.dll
    * /modl=DebugMonitor.dll
    * /modl=SP_PK_PathPlan.dll  
    * /modl=SP_PK_PathFollow.dll
    * /modl=SP_PK_SonarProc.dll
    * /modl=avp_pathplan.dll
    * /modl=SP_PK_ObjAvoid.dll
    * /modl=SP_PK_SensorFusion.dll
    * /modl=SP_PK_SlotDetect.dll
    * /modl=webots_connector.dll
    * /modl=space_tracking.dll
    * /modl=HMI.dll
    * /modl=hmihub.dll
    * /modl=sensorfusion_freespace.dll
    * /modl=Localization.dll
    * /modl=slam.dll
    * /modl=tsml.dll
    * /modl=planning.dll
    * /modl=routing.dll
    * /modl=sensorfusion_od.dll
    * /modl=avp_pathfollow.dll
    * /modl=SP_PK_StateManager_All.dll
    
    * /cfg=avp_pathplan_config.cfg
    * /cfg=avp_localplanner_config.cfg
    * /cfg=can_config.cfg
    * /cfg=comdr_config.cfg
    * /cfg=pk_occupy_config.cfg
    * /cfg=sp_pk_vehiclecontrol_config.cfg
    * /cfg=debugmonitor_config.cfg
    * /cfg=sp_pk_statemanager_all_config.cfg
    * /cfg=sp_pk_pathplan_config.cfg
    * /cfg=sp_pk_pathfollow_config.cfg
    * /cfg=sp_pk_sonarproc_config.cfg
    * /cfg=sp_pk_objavoid_config.cfg
    * /cfg=sp_pk_sensorfusion_config.cfg
    * /cfg=sp_pk_slotdetect_config.cfg
    * /cfg=tsml_config.cfg
    * /cfg=avp_pathfollow_config.cfg
    * /cfg=avp_behavior_config.cfg
    * /cfg=PLD_config.cfg
    * /cfg=mapservice_config.cfg
    * /cfg=spacemap_config.cfg
    * /cfg=sensorfusion_od_config.cfg
    * /cfg=sensorfusion_freespace_config.cfg
