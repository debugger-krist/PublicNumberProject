<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- 页面meta /-->
    <script src="../resources/admin/websit/js/jquery.min.js"></script>
</head>
<script>
    function deleteById() {
        var id = getCheckId()
        if(id) {
            if(confirm("你确认要删除此条记录吗？")) {
                location.href="${ctx}/cargo/contract/delete.do?id="+id;
            }
        }else{
            alert("请勾选待处理的记录，且每次只能勾选一个")
        }
    }

    function submit() {
        var id = getCheckId()
        if(id) {
            location.href="${ctx}/cargo/contract/submit.do?id="+id;
        }else{
            alert("请勾选待处理的记录，且每次只能勾选一个")
        }
    }

    function cancel() {
        var id = getCheckId()
        if(id) {
            location.href="${ctx}/cargo/contract/cancel.do?id="+id;
        }else{
            alert("请勾选待处理的记录，且每次只能勾选一个")
        }
    }

    function view() {
        var id = getCheckId()
        if(id) {
            location.href="${ctx}/cargo/contract/toView.do?id="+id;
        }else{
            alert("请勾选待处理的记录，且每次只能勾选一个")
        }
    }


</script>
<body>
<!-- 正文区域 -->
<section class="content">

    <!-- .box-body -->
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">数据列表</h3>
        </div>

        <div class="box-body">

            <!-- 数据表格 -->
            <div class="table-box">
                <!--数据列表-->
                <table border="1" cellspacing="0">
                    <thead>
                    <tr>
                        <th class="sorting">content</th>
                        <th class="sorting">createTime</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${logData}" var="o" varStatus="status">
                        <tr>
                            <td>${o.content}</td>
                            <td>${o.createTime}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
</div>
</body>

</html>