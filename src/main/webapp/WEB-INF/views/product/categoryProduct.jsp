<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../header.jsp" %>




<section>
    <h4>추천 상품</h4>
    <div class="categoryproducts">
        <c:if test="${not empty categoryProduct}">
            <c:forEach items="${categoryProduct}" var="productVo">
                <div class="categoryitem">
                    <div class="image-wrapper">
                        <img src="/images/${productVo.image}" alt="${productVo.title}" />
                    </div>
                    <div class="address">${productVo.address1}</div>
                    <div class="title">${productVo.title}</div>
                    <div class="pricing">
                        <div class="price">${productVo.price}원</div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
        <c:if test="${empty categoryProduct}">
            <div>현재 표시할 상품이 없습니다.</div>
        </c:if>
    </div>
</section>


<%@ include file="../footer.jsp" %>