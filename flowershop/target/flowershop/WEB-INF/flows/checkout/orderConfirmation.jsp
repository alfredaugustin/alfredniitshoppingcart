<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page isELIgnored="false" %>
<jsp:useBean id="now" class="java.util.Date" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm order</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1><u>Order Confirmation</u></h1>

        </div>

        <div class="container">

            <div class="row">

                <form:form commandName="order" class="form-horizontal">

                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                       <div class="txt-center">
                            <h1><strong><u>Receipt</u></strong></h1> <br><br>
                       </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong><br/>
                                    ${order.cart.customer.shippingAddress.streetName}
                                <br/>
                                    ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
                                <br/>
                                     ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipcode}
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Shipping Date: <fmt:formatDate type="date" value="${now}" /></p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong><br/>
                                        ${order.cart.customer.billingAddress.streetName}
                                    <br/>
                                        ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}
                                    <br/>
                                        ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipcode}
                                </address>
                            </div>
                        </div>
<br><br>
                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <td>PRODUCT_ID</td>
                                        <td>QUANTITY</td>
                                        <td class="text-center">PRICE</td>
                                        <td class="text-center">TOTAL PRICE</td>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItem}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.flower.fid}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.flower.price}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.price}</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Grand Total Price:</strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong> <i class="fa fa-inr" style="font-size:15px"></i> ${order.cart.totalPrice}</strong></h4>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>


                        <input type="hidden" name="_flowExecutionKey" />

                        <br/><br/>

                        <button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Back</button>

                        <input type="submit" value="Submit Order" class="btn btn-default" name="_eventId_orderConfirmed" />

                        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
                    </div>
                </form:form>
                <br>
<br>
            </div>
        </div>
</div>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>