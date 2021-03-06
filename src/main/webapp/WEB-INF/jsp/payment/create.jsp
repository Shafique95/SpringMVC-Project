<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/home/header.jsp"/>  

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="jumbotron jumbotron-fluid mt-2 " style="background-image: url(/resources/home/img/bg1.jpg);">
  	<div class="container">
      <div class="row text-center py-5 text-center">   
         <div class="col-sm-12 col-md-10 offset-md-1 col-lg-8 offset-lg-3 col-xl-6 offset-xl-6 my-auto">  
            <h2 class=" text-white d-inline-block p-1">Brand New</h2>
            <h1 class="font-weight-bold text-primary ">High Quality Products</h1>
            <a href="" class="btn btn-primary rounded-pill" data-addclass-on-xs="btn-sm">SHOP NOW</a>       
          </div> 
      </div>
  </div>
  </div> 

  <div class="jumbotron jumbotron-fluid mt-2 " style="background-image: url(/resources/home/img/bg.jpg);">
  	<div class="container">
      <div class="row text-center py-5 text-center">   
         <div class="col-sm-12 col-md-10 offset-md-1 col-lg-8 offset-lg-3 col-xl-6 offset-xl-6 my-auto">  
            <h2 class=" text-white d-inline-block p-1"></h2>
            <h1 class="font-weight-bold text-primary "></h1>
<!--            <a href="" class="btn btn-primary rounded-pill" data-addclass-on-xs="btn-sm"></a>       -->
          </div> 
      </div>
  </div>
  </div> 
<!-- Breadcrumb Start -->
<!--<div class="breadcrumb-wrap">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Products</a></li>
            <li class="breadcrumb-item active">Checkout</li>
        </ul>
    </div>
</div>-->


<!-- form card cc payment -->
<div class="card card-outline-secondary">
    <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-6">
            <div class="card-body bg-info">
                <h3 class="text-center">Credit Card Payment</h3>
                <hr>

                <form action="/payment/save" method="POST">
                    Customer Mobile No:
                    <select class="" name="checkId">
                        <c:forEach var="c" items="${map.cList}">
                            <option value="${c.id}">${c.mobile}</option>
                        </c:forEach>
                    </select><br/><br/>
                    <div class="form-group">
                        <label for="cc_name">Card Name</label>
                        <input type="text" class="form-control" name="card">
                    </div>
                    <div class="form-group">
                        <label>Card Number</label>
                        <input type="text" name="cardNumber">
                    </div>
                    <div class="form-group row">
                        <label class="col-md-12">Card Exp. Date</label>

                        <div class="col-md-6">
                            <input type="date" name="dateEx"/>
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" name="cvv" placeholder="CVC">
                        </div>
                    </div>


                    <hr>
                    <div class="form-group row">
                        
                        <div class="col-md-6">
                            <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
        <div class="col-lg-3"></div>
    </div>

</div>
<!-- /form card cc payment -->

<jsp:include page="/WEB-INF/jsp/common/home/footer.jsp"/>  