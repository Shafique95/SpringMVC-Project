<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
        <jsp:include page="/WEB-INF/jsp/adminCommon/header.jsp" />
         <jsp:include page="/WEB-INF/jsp/adminCommon/addItems.jsp" />
        <h1 class="text-center">Create Sub-Category</h1> <br>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2">
                    </div>


                <div class="col-md-10">
                    <form action="/subCategory/save" method="POST">
                        Category:
                        <select class="" name="cid">
                            <c:forEach var="c" items="${map.cList}">
                                <option value="${c.id}">${c.name}</option>
                            </c:forEach>
                        </select><br/><br/>
                        Name : <input type="text" name="name"/> 
                        <input class="btn-secondary" type="submit" value="save"/>
                    </form>
                </div>
            </div>
        </div>
<jsp:include page="/WEB-INF/jsp/adminCommon/footer.jsp" />

<!--        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>-->
