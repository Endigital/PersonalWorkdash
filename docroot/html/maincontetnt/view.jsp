<%@page import="com.liferay.portal.kernel.portlet.LiferayWindowState"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<portlet:defineObjects />

<c:set var="basepath" value="${pageContext.request.contextPath}"></c:set>

<script type="text/javascript" src="${basepath}/js/jquery-1.8.0.min.js"></script>
<link rel="stylesheet" href="${basepath}/css/maincontent/view.css" type="text/css" />

<div class="main_content">
	<div id="left_nav"> 
		<ul id="accordion" class="accordion">
			<li>
				<div class="link">
					<a href="#">画面监控</a>
					<i class="icon-chevron-down"></i>
				</div>
				<ul class="submenu">
					<li><a href="#" onclick="showDiv(1)">场站画面</a></li>
					<li><a href="#" onclick="showDiv(2)">状态画面</a></li>
				</ul>
			</li>
			<li>
				<div class="link">
					<a href="#">报表</a>
					<i class="icon-chevron-down"></i>
				</div>
				<ul class="submenu">
					<li><a href="#" onclick="showDiv(3)">场站报表</a></li>
					<li><a href="#">历史报表</a></li>
				</ul>
			</li>
			<li>
				<div class="link">
					<a href="#">告警</a>
					<i class="icon-chevron-down"></i>
				</div>
				<ul class="submenu">
					<li><a href="#">实时告警</a></li>
					<li><a href="#">历史告警</a></li>
				</ul>
			</li>
			<li>
				<div class="link">
					<a href="#">系统管理</a>
					<i class="icon-chevron-down"></i>
				</div>
				<ul class="submenu">
					<li><a href="#">场站总览</a></li>
					<li><a href="#">用户信息</a></li>
				</ul>
			</li>
		</ul>
	</div>
	
	<div id="right_content">
		<div id="div1">
              <%@include file="/html/graphview/view.jsp"%>
        </div>
        <div id="div2" style="display: none">
                                             这是显示的自定义的状态画面
        </div>
        <div id="div3" style="display: none">
                                             这是显示的自定义的报表
        </div>
	</div>
</div> 

<script type="text/javascript">
     function showDiv(obj){
    	 for(var i =0;i<=3;i++){
    		 if(obj == i){
    			 $("#div"+i).show();
    		 }else{
    			 $("#div"+i).hide();
    		 }
    	 }
     }
     
     var Accordion = function(el,multiple){
    	 this.el = el || {};
    	 this.multiple = multiple || false;
    	 
    	 var links = this.el.find('.link');
    	 
    	 links.on('click',{el:this.el,multiple:this.multiple},this.dropdown);
     }
     
     Accordion.prototype.dropdown = function(e){
    	 var $el = e.data.el;
    	     $this = $(this);
    	     $next = $this.next();
    	     
    	 
    	 $next.slideToggle();
    	 $this.parent().toggleClass('open');
    	 if(!e.data.multiple){
    		 $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
    	 };
     }
     
     var accordion = new Accordion($('#accordion'),false);
</script>
