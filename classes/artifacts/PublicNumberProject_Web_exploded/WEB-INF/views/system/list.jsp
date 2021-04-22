<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="../../resources/admin/easyui/easyui/1.3.4/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../../resources/admin/easyui/css/wu.css" />
<link rel="stylesheet" type="text/css" href="../../resources/admin/easyui/css/icon.css" />
<script type="text/javascript" src="../../resources/admin/easyui/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../../resources/admin/easyui/easyui/1.3.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../resources/admin/easyui/easyui/1.3.4/locale/easyui-lang-zh_CN.js"></script>
<body class="easyui-layout">
<div class="easyui-layout" data-options="fit:true">
    <!-- Begin of toolbar -->
    <!-- End of toolbar -->
    <table id="data-datagrid" class="easyui-datagrid" toolbar="#wu-toolbar"></table>
</div>
<!-- Begin of easyui-dialog -->
<div id="add-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:420px; padding:10px;">
	<form id="add-form" method="post">
        <table>
            <tr>
                <td align="right">日志内容:</td>
                <td><textarea id="add-content" name="content" rows="6" class="wu-textarea" style="width:260px"></textarea></td>
            </tr>
        </table>
    </form>
</div>
<div id="loading" style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:#F9F9F9;text-align :center;padding-top:20%;">
     <img src="../../resources/admin/easyui/images/load-page.gif" width="50%">
     <h1><font color="#15428B">加载中....</font></h1>
</div>
</body>
<script>
    var pc; 
    //不要放在$(function(){});中
    $.parser.onComplete = function () {
        if (pc) clearTimeout(pc);
        pc = setTimeout(closes, 1000);
    } 

    function closes() {
        $('#loading').fadeOut('normal', function () {
            $(this).remove();
        });
    }
</script>
<!-- End of easyui-dialog -->
<script type="text/javascript">
	/**
	*  添加记录
	*/
	function add(){
		var validate = $("#add-form").form("validate");
		if(!validate){
			$.messager.alert("消息提醒","请检查你输入的数据!","warning");
			return;
		}
		var data = $("#add-form").serialize();
		//$('#add-form').form('submit', {
		$.ajax({
			url:'add',
			dataType:'json',
			type:'post',
			data:data,
			success:function(data){
				if(data.type == 'success'){
					$.messager.alert('信息提示','添加成功！','info');
					$("#add-content").val('');
					$('#add-dialog').dialog('close');
					$('#data-datagrid').datagrid('reload');
				}else{
					$.messager.alert('信息提示',data.msg,'warning');
				}
			}
		});
	}
	
	
	//搜索按钮监听
	$("#search-btn").click(function(){
		var option = {content:$("#search-name").val()};
		$('#data-datagrid').datagrid('reload',option);
	});
	function add0(m){return m<10?'0'+m:m }
	function format(shijianchuo){
	//shijianchuo是整数，否则要parseInt转换
		var time = new Date(shijianchuo);
		var y = time.getFullYear();
		var m = time.getMonth()+1;
		var d = time.getDate();
		var h = time.getHours();
		var mm = time.getMinutes();
		var s = time.getSeconds();
		return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
	}
	
	/** 
	* Name 载入数据
	*/
	$('#data-datagrid').datagrid({
		url:'../../admin/log/list',
		//loadFilter:pagerFilter,		
		rownumbers:true,
		singleSelect:false,
		pageSize:20,           
		pagination:true,
		multiSort:true,
		fitColumns:true,
		idField:'id',
	    treeField:'name',
		fit:true,
		columns:[[
			{ field:'chk',checkbox:true},
			{ field:'content',title:'日志内容',width:100,sortable:true},
			{ field:'createTime',title:'时间',width:200,formatter:function(value,row,index){
				return format(value);
			}},
		]]
	});
</script>