<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>首页二</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="<%=basePath %>resources/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="<%=basePath %>resources/lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <link rel="stylesheet" href="<%=basePath %>resources/css/public.css" media="all">
    <style>
        .layui-card {border:1px solid #f2f2f2;border-radius:5px;}
        .icon {margin-right:10px;color:#1aa094;}
        .icon-cray {color:#ffb800!important;}
        .icon-blue {color:#1e9fff!important;}
        .icon-tip {color:#ff5722!important;}
        .layuimini-qiuck-module {text-align:center;margin-top: 10px}
        .layuimini-qiuck-module a i {display:inline-block;width:100%;height:60px;line-height:60px;text-align:center;border-radius:2px;font-size:30px;background-color:#F8F8F8;color:#333;transition:all .3s;-webkit-transition:all .3s;}
        .layuimini-qiuck-module a cite {position:relative;top:2px;display:block;color:#666;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;font-size:14px;}
        .welcome-module {width:100%;height:210px;}
        .panel {background-color:#fff;border:1px solid transparent;border-radius:3px;-webkit-box-shadow:0 1px 1px rgba(0,0,0,.05);box-shadow:0 1px 1px rgba(0,0,0,.05)}
        .panel-body {padding:10px}
        .panel-title {margin-top:0;margin-bottom:0;font-size:12px;color:inherit}
        .label {display:inline;padding:.2em .6em .3em;font-size:75%;font-weight:700;line-height:1;color:#fff;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:.25em;margin-top: .3em;}
        .layui-red {color:red}
        .main_btn > p {height:40px;}
        .layui-bg-number {background-color:#F8F8F8;}
        .layuimini-notice:hover {background:#f6f6f6;}
        .layuimini-notice {padding:7px 16px;clear:both;font-size:12px !important;cursor:pointer;position:relative;transition:background 0.2s ease-in-out;}
        .layuimini-notice-title,.layuimini-notice-label {
            padding-right: 70px !important;text-overflow:ellipsis!important;overflow:hidden!important;white-space:nowrap!important;}
        .layuimini-notice-title {line-height:28px;font-size:14px;}
        .layuimini-notice-extra {position:absolute;top:50%;margin-top:-8px;right:16px;display:inline-block;height:16px;color:#999;}
    </style>
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md8">
                <div class="layui-row layui-col-space15">
                    <div class="layui-col-md12">
                        <div class="layui-card">
                            <div class="layui-card-header"><i class="fa fa-line-chart icon"></i>上传文档</div>
                            <div class="layui-card-body">
                            	<table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md12">
                        <div class="layui-card">
                            <div class="layui-card-header"><i class="fa fa-line-chart icon"></i>开始/结束 实验</div>
                            <div class="layui-card-body">
                            	<table class="layui-hide" id="currentTableId2" lay-filter="currentTableFilter2"></table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-col-md4">

                <div class="layui-card">
                    <div class="layui-card-header"><i class="fa fa-bullhorn icon icon-tip"></i>系统公告</div>
                    <div class="layui-card-body layui-text">
                        <c:forEach var="notice" items="${notices}">
	                        <div class="layuimini-notice">
	                            <div class="layuimini-notice-title">${notice.ntit }</div>
	                            <div class="layuimini-notice-extra"><fmt:formatDate value="${ notice.ntime}" pattern="yyyy-MM-dd HH:mm:ss"/> </div>
	                            <div class="layuimini-notice-content layui-hide">${notice.nbody }</div>
	                        </div>
						</c:forEach>
                    </div>
                </div>
                <div class="layui-card">
                    <div class="layui-card-header"><i class="fa fa-paper-plane-o icon"></i>作者心语</div>
                    <div class="layui-card-body layui-text layadmin-text">
                        <p>本系统基于layui2.5.4进行实现。layui开发文档地址：<a class="layui-btn layui-btn-xs layui-btn-danger" target="_blank" href="http://www.layui.com/doc">layui文档</a></p>
                        <p>项目用途：毕业设计</p>
                        <p>联系qq（318361459）：<a target="_blank" href="https://jq.qq.com/?_wv=1027&k=5lyiE2Q"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="layuimini" title="layuimini"></a></p>
                    </div>
                </div>
                <div class="layui-card">
                    <div class="layui-card-header"><i class="fa fa-paper-plane-o icon"></i>当前天气</div>
                    <div class="layui-card-body">
                    	<!-- tianqi -->
						<div id="weather-view-he"></div>
						<div style="height: 300px"></div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script>
WIDGET = {ID: 'AV38ZRzDCZ'};
</script>
<script type="text/javascript" src="https://apip.weatherdt.com/view/static/js/r.js?v=1111"></script>
<script type="text/html" id="statusTpl">
    {{#  if(d.estate == 1){ }}
		<span class="layui-btn layui-btn-warm layui-btn-xs">未审核</span>
    {{#  } else if(d.estate == 2) { }}
        <span class="layui-btn layui-btn-normal layui-btn-xs">未通过</span>
	{{#  } }}
</script>
<script type="text/html" id="uploadItem">
  <a class="layui-btn layui-btn-xs upload_btn" lay-data="{data: {id: '{{d.eid}}', other: 100} }">上传帮助</a>
</script>
<script type="text/html" id="urlTpl">
   <a href="<%=basePath%>img/experiment{{d.ehelp}}" download="{{d.ename}}实验文档">{{d.ehelp}}</a>
</script>
<script type="text/html" id="currentTableBar">
   <a class="layui-btn layui-btn-normal layui-btn-xs data-count-edit" lay-event="start">开始</a>
   <a class="layui-btn layui-btn-xs layui-btn-danger data-count-delete" lay-event="end">结束</a>
</script>
<script type="text/html" id="statusTpl2">
   {{#  if(d.estate == 3){ }}
		<span class="layui-btn layui-btn-warm layui-btn-xs">待开始</span>
   {{#  } else if(d.estate == 4) { }}
        <span class="layui-btn layui-btn-normal layui-btn-xs">进行中</span>
   {{#  } }}
</script>
<script src="<%=basePath %>resources/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="<%=basePath %>resources/js/lay-config.js?v=1.0.4" charset="utf-8"></script>
<script>
    layui.use(['layer', 'miniTab','util','table','upload'], function () {
        var $ = layui.jquery,
            layer = layui.layer,
            miniTab = layui.miniTab,
            upload = layui.upload,
			util = layui.util,
			table = layui.table;
        miniTab.listen();
        //提交文档表格初始化
        table.render({
            elem: '#currentTableId',
            url: '<%=basePath %>experiment/listHelp?tid=${teacher.tid}',
            defaultToolbar: ['filter', 'exports', 'print', {
                title: '提示',
                layEvent: 'LAYTABLE_TIPS',
                icon: 'layui-icon-tips'
            }],
            cols: [[
                {field: 'ename',  title: '实验名'},
                {field: 'edesc',  title: '实验描述'},
                {field: 'lname', title: '实验室', sort: true},
                {field: 'dname', title: '设备'},
                {field: 'dnum', title: '设备数量'},
                {field: 'estime',title: '开始日期', templet:'<div>{{ layui.util.toDateString(d.estime, "yyyy-MM-dd HH:mm:ss") }}</div>',sort: true},
                {field: 'ehelp',title: '文档', templet: "#urlTpl"},
                {field: 'upload',title: '文档上传',templet: '#uploadItem'}
            ]],
            text: {
                none: '当前没有实验需要上传文档哦！' //默认：无数据。注：该属性为 layui 2.2.5 开始新增
            },
            done: function (res, curr, count) {
                var tableId = this.id;
                console.log("hahahaha"+this.id);
                console.log(this.elem);
                var tableElem = this.elem;
                // table render出来实际显示的table组件
                var tableViewElem = tableElem.next();
                // 渲染当前页面的所有的upload组件
                var uploadInst = upload.render({
                    elem: tableViewElem.find('.upload_btn')
                    ,url: '<%=basePath%>experiment/upload' //改成您自己的上传接口
                    	,accept: 'file' 
                		,before: function(obj){
                			console.log("开始")
                		}
                		,done: function(res){
    	              		//如果上传失败
    	              		if(res.code > 0){
    	                		layer.msg('上传失败');
    	              		}else{
    	              			//上传成功
        	              		$.ajax({
        	      	              url: '<%=basePath%>experiment/changeHelp',
        	      	              type: "GET",
        	      	              async: false,
        	      	              data: {
        	      	                  ehelp :res.data.src,
        	      	                  eid : res.data.eid
        	      	              },
        	      	              dataType: 'HTML',
        	      	             	success: function (data) {
        	      	
        	      	                 	mmsg=data;
        	      	              } 
        	      	          });
        	              		if(mmsg=='1'){
        	              			layer.msg('上传成功');
        	              			table.reload('currentTableId');
        	           		   }else{
        	           			layer.msg('文件已上传，数据更新失败！');
        	           		   }
        	              	}
                		}
                		,error: function(){
                			layer.msg('上传失败，未知错误！')
                		}
                });
            }
        });

        table.render({
            elem: '#currentTableId2',
            url: '<%=basePath %>experiment/listSE?tid=${teacher.tid}',
            defaultToolbar: ['filter', 'exports', 'print', {
                title: '提示',
                layEvent: 'LAYTABLE_TIPS',
                icon: 'layui-icon-tips'
            }],
            cols: [[
                {field: 'ename',  title: '实验名'},
                {field: 'edesc',  title: '实验描述'},
                {field: 'estime',title: '开始日期', templet:'<div>{{ layui.util.toDateString(d.estime, "yyyy-MM-dd HH:mm:ss") }}</div>',sort: true},
                {field: 'estate',title: '状态', templet: "#statusTpl2",sort:true},
                {title: '操作', minWidth: 150, toolbar: '#currentTableBar', align: "center"}
            ]],
            text: {
                none: '当前没有实验需要操作！' //默认：无数据。注：该属性为 layui 2.2.5 开始新增
            }
        });
        //监听操作栏事件
        table.on('tool(currentTableFilter2)', function (obj) {
            var data = obj.data;
            if (obj.event === 'start') {
            	if(data.estate==4){
            		layer.msg('已经开始')
                }else if(data.estate==3){
					if(new Date().getTime()<new Date(data.estime).getTime()){
						layer.msg("还未到可开始的时间")
					}else{
						$.ajax({
	      	              url: '<%=basePath%>experiment/changeState',
	      	              type: "GET",
	      	              async: false,
	      	              data: {
	      	                  eid : data.eid,
	      	                  estate: 4
	      	              },
	      	              dataType: 'HTML',
	      	             	success: function (data) {
	      	                 	mmsg=data;
	      	              } 
  	      	          	});
						if(mmsg=='1'){
	              			layer.msg('开始成功');
	              			table.reload('currentTableId2');
	              			table.reload('currentTableId');
	           		    }else{
	           			    layer.msg('开始失败！');
	           		    }
					}
                }
                return false;
            } else if (obj.event === 'end') {
            	if(data.estate==3){
            		layer.msg('还未开始')
                }else if(data.estate==4){
                	$.ajax({
	      	              url: '<%=basePath%>experiment/changeState',
	      	              type: "GET",
	      	              async: false,
	      	              data: {
	      	                  eid : data.eid,
	      	                  estate: 5
	      	              },
	      	              dataType: 'HTML',
	      	             	success: function (data) {
	      	                 	mmsg=data;
	      	              } 
	      	          	});
						if(mmsg=='1'){
	              			layer.msg('结束成功');
	              			table.reload('currentTableId2');
	              			table.reload('currentTableId');
	           		    }else{
	           			    layer.msg('结束失败！');
	           		    }
                }
                return false;
            }
        });


        
        /**
         * 查看公告信息
         **/
        $('body').on('click', '.layuimini-notice', function () {
            var title = $(this).children('.layuimini-notice-title').text(),
                noticeTime = $(this).children('.layuimini-notice-extra').text(),
                content = $(this).children('.layuimini-notice-content').html();
            var html = '<div style="padding:15px 20px; text-align:justify; line-height: 22px;border-bottom:1px solid #e2e2e2;background-color: #2f4056;color: #ffffff">\n' +
                '<div style="text-align: center;margin-bottom: 20px;font-weight: bold;border-bottom:1px solid #718fb5;padding-bottom: 5px"><h4 class="text-danger">' + title + '</h4></div>\n' +
                '<div style="font-size: 12px">' + content + '</div>\n' +
                '</div>\n';
            parent.layer.open({
                type: 1,
                title: '系统公告'+'<span style="float: right;right: 1px;font-size: 12px;color: #b1b3b9;margin-top: 1px">'+noticeTime+'</span>',
                area: '300px;',
                shade: 0.8,
                id: 'layuimini-notice',
                btn: ['查看', '取消'],
                btnAlign: 'c',
                moveType: 1,
                content:html,
                success: function (layero) {
                    var btn = layero.find('.layui-layer-btn');
                    btn.find('.layui-layer-btn0').attr({
                        href: '',
                        target: '_blank'
                    });
                }
            });
        });

        

       

    });

    
</script>
</body>
</html>
