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
7.fab xx 查看所有可用函数
'''

from fabric.api import local,lcd
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


#########edx
def edxPaverCms():
    """docstring for edxPaverCms"""
    local("sudo -H -u edxapp bash && \
          source /edx/app/edxapp/edxapp_env &&\
          cd /edx/app/edxapp/edx-platform &&\
          paver update_assets cms --settings=aws")


