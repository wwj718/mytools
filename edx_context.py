#coding:utf-8

######################
#导入帖子评论
import pymongo
conn = pymongo.Connection('localhost', 27017)
db = conn.cs_comments_service_development
commemt = db.contents.find({"_type":u"Comment"})

#######################
#导入课程
from xmodule.modulestore.django import modulestore
courses = modulestore().get_courses
c0 = modulestore().get_courses()[0]
