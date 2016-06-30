<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>
<%@page import="com.liferay.portal.kernel.portlet.LiferayWindowState"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<portlet:defineObjects />

<c:set var="basepath" value="${pageContext.request.contextPath}"></c:set>
<link rel="stylesheet" href="${basepath}/css/graphview/view.css" type="text/css" />

<div>
	<div id="control_panel">
		<form>
			<fieldset>
				<label>区域</label>
				<select>
					<option>上海市<option>
					<option>上海市<option>
			 		<option>上海市<option>
				</select>
				<select>
					<option>嘉定区<option>
					<option>嘉定区<option>
					<option>嘉定区<option>
				</select>
				<select>
					<option>变电站<option>
					<option>光伏站<option>
				</select>
			</fieldset>
		</form>
	</div>  
	<div id="show_view">
		<div class="graphitem">
			<iframe id="content_iframe1" src="http://www.baidu.com" frameborder="0"  marginheight="0" marginwidth="0" width="100%" height="100%"></iframe>
			<div>
				<button>查看</button>    
				<button>删除</button>
			</div>
		</div>
		<div class="graphitem">
			<iframe id="content_iframe2" src="http://120.26.214.87/graphnf/?id=156" frameborder="0"  marginheight="0" marginwidth="0" width="100%" height="100%"></iframe>
			<div>
				<button id="showBtn2">查看</button>
				<button>删除</button>
			</div>
		</div>
		<div class="graphitem">
			<iframe id="content_iframe3" src="http://120.26.214.87/graphnf/?id=129" frameborder="0"  marginheight="0" marginwidth="0" width="100%" height="100%"></iframe>
			<div class="control_btn">
				<button id="showBtn3">查看</button>
				<button>删除</button>
			</div>
		</div>
		<div class="graphitem">
			<iframe id="content_iframe4" src="http://120.26.214.87/graphnf/?id=119" frameborder="0"  marginheight="0" marginwidth="0" width="100%" height="100%"></iframe>
			<div>
				<button id="showBtn4">查看</button>
				<button>删除</button>
			</div>
		</div>
	</div>
</div>
