﻿

layui.use(['form', 'layedit'], function () {
    var form = layui.form;
    var $ = layui.jquery;
    var layedit = layui.layedit;
    
    $.ajax({
	    url:'<%=basePath%>experiment/exmsg?eid=<%=request.getParameter("eid")%>',      
	    type:"get",
	    data:{
	    },         
	   	success:function(res){
	        console.log(res);
	    }  
	       
      });

    //评论和留言的编辑器
    var editIndex = layedit.build('remarkEditor', {
        height: 150,
        tool: ['face', '|', 'left', 'center', 'right', '|', 'link'],
    });
    //评论和留言的编辑器的验证
    layui.form.verify({
        content: function (value) {
            value = $.trim(layedit.getText(editIndex));
            if (value == "") return "自少得有一个字吧";
            layedit.sync(editIndex);
        }
    });

    //监听评论提交
    form.on('submit(formRemark)', function (data) {
        var index = layer.load(1);
        //模拟评论提交
        setTimeout(function () {
            layer.close(index);
            var content = data.field.editorContent;
            var html = '<li><div class="comment-parent"><img src="http://localhost:8080/LIMS_SSM/img/lab/images/2020-05-06/e9c0fe26-0fca-4d7b-9428-df24abba9712.jpg" alt="absolutely"/><div class="info"><span class="username">Absolutely</span><span class="time">2017-03-18 18:46:06</span></div><div class="content">' + content + '</div></div></li>';
            $('.blog-comment').append(html);
            $('#remarkEditor').val('');
            editIndex = layui.layedit.build('remarkEditor', {
                height: 150,
                tool: ['face', '|', 'left', 'center', 'right', '|', 'link'],
            });
            layer.msg("评论成功", { icon: 1 });
        }, 500);
        return false;
    });
});