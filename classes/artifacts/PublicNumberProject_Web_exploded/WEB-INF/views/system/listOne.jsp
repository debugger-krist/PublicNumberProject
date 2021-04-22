<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <style type="text/css">
        * {
            padding: 0;
            margin: 0;
        }

        table {
            margin: 100px auto;
            border: 1px solid #000;
            border-collapse: collapse; /*设置表格的边框是否被合并为一个单一的边框*/
            border-spacing: 0; /*设置相邻单元格的边框间的距离*/
        }

        tr {
            width: 300px;
            height: 50px;
            line-height: 50px;
            border-bottom: 1px solid #000;
            background-color: pink;
        }

        td, th {
            width: 99px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            border-right: 1px solid #000;
        }
    </style>
        <script type="text/javascript" src="../resources/admin/websit/js/jquery.min.js"></script>
</head>
<body>
<script type="text/javascript">
    $.ajax({
        url: "http://127.0.0.1:8080/system/contact",
        type: 'POST',
        datatype: 'json',
        data: {username: '微'},
        success: function (res) {
            //将数据显示在页面上
            var str = "";
            str += "<table><thead><tr><th>name</th><th>content</th></tr></thead><tbody>";
            //遍历数据
            $.each(res, function (index, element) {
                str += "<tr><td>" + element['name'] + "</td><td>" + element['content'] + "</td></tr>";
            })
//遍历完成之后
            str += "</tbody></table>";
//将表格添加到body中
            $('body').append(str);
        }
    })
</script>
</body>


