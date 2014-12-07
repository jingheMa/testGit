<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>申请模板选择</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/blue/select.css" />
</head>
<body>

  <div id="Title_bar" style="margin-bottom: 20px;">
    <div id="Title_bar_Head">
      <div id="Title_Head"></div>
      <div id="Title">
        <!--页面标题-->
        <img border="0" width="13" height="13"
          src="${pageContext.request.contextPath}/css/images/title_arrow.gif" />
        申请模板选择
      </div>
      <div id="Title_End"></div>
    </div>
  </div>

  <table width="85%" cellspacing="0" cellpadding="1" border="0"
    class="TableBorder" style="margin-left: 15px;">
    <tbody>
      <tr>
        <td>
          <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tr>
              <td class="HeadRight">
                <table height="27" cellspacing="0" cellpadding="0"
                  border="0">
                  <tr>
                    <td class="HeadLeft">请选择申请模板</td>
                    <td width="35" class="HeadMiddle"></td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td class="Detail dataContainer" datakey="formTemplateList">
          <!-- 显示表单模板列表 --> <c:forEach items="${ftList }" var="template">
            <div id="DetailBlock" class="template">
              <img width="16" height="16"
                src="${pageContext.request.contextPath}/css/images/FileType/doc.gif" />
              <a href="${pageContext.request.contextPath }/workFlow/submitUI/${template.formTemplateId}/${template.formTemplateName}">${template.formTemplateName }</a>
            </div>
          </c:forEach>
        </td>
      </tr>
    </tbody>
  </table>

</body>
</html>
