<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

<style>

 a { color:#05f; text-decoration:none; }
 a:hover { text-decoration:underline; }
 
 h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
 ul, lo, li { margin:0; padding:0; list-style:none; }
#side_style{
      /* background-color:rgba(220, 220, 220 ,0.5); */  
      width:150px;
      height:100%; 
      float:left;
   }
h3 { font-size:22px; margin-bottom:20px; text-align:center; }
li { font-size:16px; text-align:center; }
li a { color:#000; display:block; padding:10px 0; }
li a:hover { text-decoration:none; background:#eee; }
 
li { position:relative; }
li:hover { background:#eee; }   
li > ul.low { display:none; position:absolute; top:0; left:113px;  }
li:hover > ul.low { display:block; }
li:hover > ul.low li a { background:#eee; border:1px solid #eee; }
li:hover > ul.low li a:hover { background:#fff;}
li > ul.low li { width:180px; }
 

</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <div id="side_style">
      <ul>
         <li><a>outer</a>
         
            <ul class="low">
               <li><a href="${pageContext.request.contextPath}/category?category1=man&category2=outer">man</a></li>
               <li><a href="${pageContext.request.contextPath}/category?category1=woman&category2=outer">woman</a></li>
            </ul>
            </li>
         <li><a>tee</a>
         
            <ul class="low">
               <li><a href="${pageContext.request.contextPath}/category?category1=man&category2=shirt">man</a></li>
               <li><a href="${pageContext.request.contextPath}/category?category1=woman&category2=shirt">woman</a></li>
            </ul>
         </li>
         <li><a>pants</a>
         
            <ul class="low">
               <li><a href="${pageContext.request.contextPath}/category?category1=man&category2=short">man</a></li>
               <li><a href="${pageContext.request.contextPath}/category?category1=woman&category2=short">woman</a></li>
            </ul>
         </li>
      </ul>
   </div>
</body>
</html>