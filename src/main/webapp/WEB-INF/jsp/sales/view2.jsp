<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/adminCommon/header.jsp" />
        <jsp:include page="/WEB-INF/jsp/adminCommon/reportNav.jsp" />
<h1 class="text-center">Monthly Sales Report</h1> <br>
<div class="container-fluid">
    <div class="row">
        <!--        <div class="col-md-2">
        
                </div>-->
        <div class="col-md-12">
            <table class="table" border="1" width="45" cellspacing="1">
                <thead>
                    <tr class="table">
                        <th>Id</th>
                        <th>Product Id</th>
                        <th>Product Name</th>
                        <th>Product Code</th>
                        <th>Product Price</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                        <th>Monthly Sales</th>
                        

                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="st" items="${map.pList}">
                        <tr class="text-center">
                            <td>${st.kid}</td>
                            <td>${st.pid}</td>
                            <td>${st.pName}</td>
                            <td>${st.pCode}</td>
                            <td>${st.pPrice}</td>
                            <td class="bg-primary">${st.qty}</td>
                            <td class="bg-purple">${st.total}</td>
                           
                            <td class="bg-light">${st.months}</td>
                            
                        </tr>
                    </c:forEach>
                        <tr class="text-center" >
                        <td colspan="5"><strong>Total</strong></td>
                        <td>${map.totalQty}</td>
                        <td>${map.totalPrice}</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
 <jsp:include page="/WEB-INF/jsp/adminCommon/footer.jsp" />
