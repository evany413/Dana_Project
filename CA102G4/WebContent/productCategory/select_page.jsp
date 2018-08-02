<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>CA102G4 ProductCategory: Home</title>

<style>
  table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
    border: 3px ridge Gray;
    height: 80px;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
   <tr><td><h3>CA102G4 ProductCategory: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for CA102G4 ProductCategory: Home</p>

<h3>資料查詢:</h3>
	
<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<ul>
  <li><a href='listAllProductCategory.jsp'>List</a> all ProductCategories.  <br><br></li>
  
  
  <li>
    <FORM METHOD="post" ACTION="productCategory.do" >
        <b>輸入商品類別編號 (如10):</b>
        <input type="text" name="product_category_id">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="送出">
    </FORM>
  </li>

  <jsp:useBean id="productCategorySvc" scope="page" class="com.productCategory.model.ProductCategoryService" />
   
  <li>
     <FORM METHOD="post" ACTION="productCategory.do" >
       <b>選擇商品類別編號:</b>
       <select size="1" name="product_category_id">
         <c:forEach var="productCategoryVO" items="${productCategorySvc.all}" > 
          <option value="${productCategoryVO.product_category_id}">${productCategoryVO.product_category_id}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
    </FORM>
  </li>
  
  <li>
     <FORM METHOD="post" ACTION="productCategory.do" >
       <b>選擇商品類別名稱:</b>
       <select size="1" name="product_category_id">
         <c:forEach var="productCategoryVO" items="${productCategorySvc.all}" > 
          <option value="${productCategoryVO.product_category_id}">${productCategoryVO.product_category_name}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
     </FORM>
  </li>
</ul>


<h3>商品類別管理</h3>

<ul>
  <li><a href='addProductCategory.jsp'>Add</a> a new ProductCategory.</li>
</ul>

</body>
</html>