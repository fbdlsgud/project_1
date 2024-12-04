<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<div id="main_img">
    <img src="http://placehold.co/1024x400">
</div>

<div id="menu">
	<a href="category?category=1">
		<img src="http://placehold.co/90">
	</a>
	<a href="category?category=2">
		<img src="http://placehold.co/90">
	</a>
	<a href="category?category=3">
		<img src="http://placehold.co/90">
	</a>
</div>

<!-- BEST -->
<div id="BestItem">
	<h2>Best</h2>
	<div class="products">
		<div class="item">
			<div><img src="http://placehold.co/200x200" /></div>
		</div>
		<div class="item">
			<div><img src="http://placehold.co/200x200" /></div>
		</div>
		<div class="item">
			<div><img src="http://placehold.co/200x200" /></div>
		</div>
		<div class="item">
			<div><img src="http://placehold.co/200x200" /></div>
		</div>
<%--		<c:forEach items="${bestList}" var="pvo" >--%>
<%--			<div class="item" onClick="location.href='productDetail?pseq=${pvo.pseq}'" >--%>
<%--					<div><img src="http://placehold.co/200x200" /></div>--%>
<%--					<div>${pvo.name}--%>
<%--						- <fmt:formatNumber value="${pvo.price2}" type="currency" /></div>--%>
<%--			</div>--%>
<%--		</c:forEach>--%>
	</div>
</div>

<!-- NEW -->
<div id="NewItem">
	<h2>New</h2>
	<div class="products">
		<div class="item">
			<div><img src="http://placehold.co/200x200" /></div>
		</div>
		<div class="item">
			<div><img src="http://placehold.co/200x200" /></div>
		</div>
		<div class="item">
			<div><img src="http://placehold.co/200x200" /></div>
		</div>
		<div class="item">
			<div><img src="http://placehold.co/200x200" /></div>
		</div>
<%--		<c:forEach items="${newList}" var="pvo" >--%>
<%--			<div class="item"  onClick="location.href='productDetail?pseq=${pvo.pseq}'" >--%>
<%--					<div><img src="http://placehold.co/200x200" /></div>--%>
<%--					<div>${pvo.name}--%>
<%--						- <fmt:formatNumber value="${pvo.price2}" type="currency" /></div>--%>
<%--			</div>--%>
<%--		</c:forEach>--%>
	</div>
</div>

<%@ include file="footer.jsp" %>