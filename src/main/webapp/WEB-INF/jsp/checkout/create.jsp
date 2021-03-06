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
<!-- Breadcrumb End -->

<!-- Checkout Start -->
<div class="checkout" style="background-color:#F1F1F1 ">
    <div class="container-fluid" style="background-color:#F1F1F1 "> 
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-lg-6">
                <div class="checkout-inner">
                    <div class="billing-address">
                        <h2>Billing Address</h2>
                        <div class="row bg-info">
                            <form action="/checkout/save" method="POST">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>First Name</label>
                                        <input class="form-control" name="firstName" type="text" placeholder="First Name">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Last Name"</label>
                                        <input class="form-control" name="lastName" type="text" placeholder="Last Name">
                                    </div>
                                    <div class="col-md-6">
                                        <label>E-mail</label>
                                        <input class="form-control" name="email" type="text" placeholder="E-mail">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Mobile No</label>
                                        <input class="form-control" name="mobile" type="text" placeholder="Mobile No">
                                    </div>
                                    <div class="col-md-12">
                                        <label>Address</label>
                                        <input class="form-control" name="address" type="text" placeholder="Address">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Country</label>
                                        <select class="" name="cid">
                                            <c:forEach var="c" items="${map.cList}">
                                                <option value="${c.id}">${c.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>City</label>
                                        <input class="form-control" name="town" type="text" placeholder="City">
                                    </div>
                                    <div class="col-md-6">
                                        <label>State</label>
                                        <input class="form-control" name="state" type="text" placeholder="State">
                                    </div>
                                    <div class="col-md-6">
                                        <label>ZIP Code</label>
                                        <input class="form-control" name="zip" type="text" placeholder="ZIP Code">
                                    </div>
                                    <input  class="btn-danger" type="submit" value="Submit"/>
                                </div>

                            </form></div>

                    </div>

                    
                </div>
            </div>
            <div class="col-md-3"></div>
<!--            <div class="col-lg-4">
                <div class="checkout-inner">
                    <div class="checkout-summary">
                        <c:forEach var="invoice" items="${map.inList}">
                            <h1>Cart Total</h1>
                            <h2>Sub Total<span>${invoice.subTotal}</span></h2>
                            <h2>Vat<span>${invoice.vat}%</span></h2>
                            <h2>Shipping Cost<span>${invoice.dCharge}</span></h2>
                            <h2>Grand Total<span>${invoice.grandTotal}</span></h2>
                        </c:forEach>
                    </div>

                    <div class="checkout-payment">
                        <div class="payment-methods">
                            <h1>Payment Methods</h1>
                            <div class="payment-method">
                                <div class="custom-control custom-radio">
                                    <input type="radio" class="custom-control-input" id="payment-1" name="payment">
                                    <label class="custom-control-label" for="payment-1">Paypal</label>
                                </div>
                                <div class="payment-content" id="payment-1-show">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label>Payment Number</label>
                                            <input class="form-control" type="text" placeholder="Payment Number">
                                        </div>
                                        <div class="col-md-12">
                                            <label>Amount"</label>
                                            <input class="form-control" type="text" placeholder="Amount">
                                        </div>
                                        <div class="col-md-12">
                                            <label>Code</label>
                                            <input class="form-control" type="text" placeholder="Password">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="payment-method">
                                <div class="custom-control custom-radio">
                                    <input type="radio" class="custom-control-input" id="payment-2" name="payment">
                                    <label class="custom-control-label" for="payment-2">Payoneer</label>
                                </div>
                                <div class="payment-content" id="payment-2-show">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label>Payment Number</label>
                                            <input class="form-control" type="text" placeholder="Payment Number">
                                        </div>
                                        <div class="col-md-12">
                                            <label>Amount"</label>
                                            <input class="form-control" type="text" placeholder="Amount">
                                        </div>
                                        <div class="col-md-12">
                                            <label>Code</label>
                                            <input class="form-control" type="text" placeholder="Password">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="payment-method">
                                <div class="custom-control custom-radio">
                                    <input type="radio" class="custom-control-input" id="payment-3" name="payment">
                                    <label class="custom-control-label" for="payment-3">Check Payment</label>
                                </div>

                                <div class="payment-content" id="payment-3-show">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label>Payment Number</label>
                                            <input class="form-control" type="text" placeholder="Payment Number">
                                        </div>
                                        <div class="col-md-12">
                                            <label>Amount"</label>
                                            <input class="form-control" type="text" placeholder="Amount">
                                        </div>
                                        <div class="col-md-12">
                                            <label>Code</label>
                                            <input class="form-control" type="text" placeholder="Password">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="payment-method">
                                <div class="custom-control custom-radio">
                                    <input type="radio" class="custom-control-input" id="payment-4" name="payment">
                                    <label class="custom-control-label" for="payment-4">Direct Bank Transfer</label>
                                </div>
                                <div class="payment-content" id="payment-4-show">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label>Payment Number</label>
                                            <input class="form-control" type="text" placeholder="Payment Number">
                                        </div>
                                        <div class="col-md-12">
                                            <label>Amount"</label>
                                            <input class="form-control" type="text" placeholder="Amount">
                                        </div>
                                        <div class="col-md-12">
                                            <label>Code</label>
                                            <input class="form-control" type="text" placeholder="Password">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="payment-method">
                                <div class="custom-control custom-radio">
                                    <input type="radio" class="custom-control-input" id="payment-5" name="payment">
                                    <label class="custom-control-label" for="payment-5">Cash on Delivery</label>
                                </div>
                                <div class="payment-content" id="payment-5-show">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label>Payment Number</label>
                                            <input class="form-control" type="text" placeholder="Payment Number">
                                        </div>
                                        <div class="col-md-12">
                                            <label>Amount"</label>
                                            <input class="form-control" type="text" placeholder="Amount">
                                        </div>
                                        <div class="col-md-12">
                                            <label>Code</label>
                                            <input class="form-control" type="text" placeholder="Password">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="checkout-btn">
                            <button>Place Order</button>
                        </div>
                    </div>
                </div>
            </div>-->
        </div>
    </div>
</div>
<!-- Checkout End -->

<!--        <form action="/checkout/save" method="POST">
            <div class="row">
                <div class="col-md-6">
                    <label>First Name</label>
                    <input class="form-control" name="firstName" type="text" placeholder="First Name">
                </div>
                <div class="col-md-6">
                    <label>Last Name"</label>
                    <input class="form-control" name="lastName" type="text" placeholder="Last Name">
                </div>
                <div class="col-md-6">
                    <label>E-mail</label>
                    <input class="form-control" name="email" type="text" placeholder="E-mail">
                </div>
                <div class="col-md-6">
                    <label>Mobile No</label>
                    <input class="form-control" name="mobile" type="text" placeholder="Mobile No">
                </div>
                <div class="col-md-12">
                    <label>Address</label>
                    <input class="form-control" name="address" type="text" placeholder="Address">
                </div>
                <div class="col-md-6">
                    <label>Country</label>
                    <select class="" name="cid">
<c:forEach var="c" items="${map.cList}">
    <option value="${c.id}">${c.name}</option>
</c:forEach>
</select>
</div>
<div class="col-md-6">
<label>City</label>
<input class="form-control" name="town" type="text" placeholder="City">
</div>
<div class="col-md-6">
<label>State</label>
<input class="form-control" name="state" type="text" placeholder="State">
</div>
<div class="col-md-6">
<label>ZIP Code</label>
<input class="form-control" name="zip" type="text" placeholder="ZIP Code">
</div>
<input class="btn-info" type="submit" value="save"/>
</div>

</form>-->
<!--<script>
           function valid(){
               var rand =( Math.floor(Math.random() * 10000) +1);
               alert(rand);
               
               var pro = prompt("Enter your Otp Number");
               
               if(rand == pro){
                   alert("otp matched");
               }else{
                   alert("otp does not matched");
               }
           }
       </script>-->
<jsp:include page="/WEB-INF/jsp/common/home/footer.jsp"/>  