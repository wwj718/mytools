#coding=utf-8
#!/usr/bin/python
'''使用说明
1.fab fun_name
2.默认到当前路径下寻找fabfile.
3.run(command)在远程服务器执行shell指令
4.local(command)在本地服务器执行shell指令
5.with cd(PATH):
    xxx  #切换工作目录
6.put - 将指定文件上传到指定服务器
7.fab xx 查看所有可用函数 #使用pip　1.8.2版本
'''

from fabric.api import local,lcd,settings,prefix
#结合sh使用，用python来获取系统数据

######settings######
#set fabfile.py dir
dir='~/'

######test#######
#test func
def test_uname():
    local('uname -a')

#测试工作目录
def test_work_dir():
    """当前工作"""
    local("ls")

#test local cd
def test_ls_tmp():
    #local('cd ~/mylab && ls')
    with lcd("/tmp"):
        local("ls")
#test raw_input
def test_input():
    yourname=raw_input('Input your name:')
    local('echo %s' % yourname )
    print 'python print %s'%(yourname,)

#使用vim拦截一次
def test_vim():
    with lcd("/tmp"):
        local("vim myvim")
        local("cat myvim")


#########eddef edxPaverCms(sudo_user="edxapp"):
def _bash(command='help'):
    return "/bin/bash -l -c 'source /edx/app/edxapp/edxapp_env &&"+command + "'"

def edxPaverCms():
    #with lcd("/edx/app/edxapp/edx-platform"):
    #    local("paver update_assets cms --settings=aws")
    with settings(sudo_user='edxapp'),prefix("/edx/app/edxapp/edxapp_env"):
        local("paver update_assets cms --settings=aws")
        #local("/edx/app/edxapp/edx-platform/paver update_assets cms --settings=aws")

def edxIpython():
    """docstring for edxIpython"""
    local("sudo -u www-data /edx/bin/python.edxapp /edx/app/edxapp/edx-platform/manage.py lms --settings aws shell")

def edxLog():
    """docstring for edxLog"""
    
