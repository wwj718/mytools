" 双引号开头表示Vim的注释
" 函数使用VimL定义的， 我们可以在函数定义中混用 VimL和 Python
function! Reddit()
 
" 我像下面这行这样开始写 python 代码
 
python << EOF
# Vim 模块包含了所有从python访问vim的接口。 我们需要用urllib2写访问网络服务的部分。
import vim, urllib2
# 我们需要用json来解析 response
import json
 
# 我们定义了一个最长时间来调用 api 。我们不希望用户久等。
TIMEOUT = 20
URL = "http://reddit.com/.json"
 
try:
    # 得到帖子 并分析json
    response = urllib2.urlopen(URL, None, TIMEOUT).read()
    json_response = json.loads(response)
 
    posts = json_response.get("data", "").get("children", "")
 
    # vim.current.buffer 就是当前缓冲区。它是一个类似于列表的对象
    # 每行是一个list的一项。 我们可以对它们循环遍历、删除、修改等等。
    # 我们在这里删除当前缓冲区的所有内容
    del vim.current.buffer[:]
 
    # 为了美观，我们在顶部加入几行。
    vim.current.buffer[0] = 80*"-"
 
    for post in posts:
        # 接下来几行，我们放帖子的详细内容。
        post_data = post.get("data", {})
        up = post_data.get("ups", 0)
        down = post_data.get("downs", 0)
        title = post_data.get("title", "NO TITLE").encode("utf-8")
        score = post_data.get("score", 0)
        permalink = post_data.get("permalink").encode("utf-8")
        url = post_data.get("url").encode("utf-8")
        comments = post_data.get("num_comments")
 
        # 我们一行一行地插入到缓冲区里
        # 首先是 被顶了多少次
        vim.current.buffer.append("↑ %s"%up)
        # 然后标题和链接
        vim.current.buffer.append("    %s [%s]"%(title, url,))
        # 然后是 被踩了多少次 和 评论数
        vim.current.buffer.append("↓ %s    | comments: %s [%s]"%(down, comments, permalink,))
        # 为了好看我们再插入一些 "-"
        vim.current.buffer.append(80*"-")
 
except Exception, e:
    print e
 
EOF
" Python代码在这里结束。 我们可以再继续写 VimL 或者 python代码。
endfunction
