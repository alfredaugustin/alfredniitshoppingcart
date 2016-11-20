var myapp=angular.module("myapp",[]).controller("myController",function($scope,$http){

$scope.getFlowerList = function()
{
$http.get('http://localhost:8181/flowershop/getFlowerList').success(function (data){$scope.flowers = data;})
}
		
$scope.addToCart=function(fid){
$http.put('http://localhost:8181/flowershop/cart/add/'+fid).success(function(){
																			  alert('Added to cart!');})
																			  }   
	   
$scope.refreshCart=function()
{
$http.get('http://localhost:8181/flowershop/cart/getCart/'+$scope.cartId).success(function(data){$scope.cart=data;})
} 
	    
$scope.getCart=function(cartId)
		{
	$scope.cartId=cartId;
	$scope.refreshCart(cartId);
	    }
	    
$scope.removeFromCart=function(cartItemId)
{
$http.put('http://localhost:8181/flowershop/cart/removecartitem/'+cartItemId).success(function(){
																							alert('This item is removed from the cart!');
																							$scope.refreshCart();
																								})
}
	    
$scope.clearCart=function()
{
$http.put('http://localhost:8181/flowershop/cart/removeAllItems/'+$scope.cartId).success(function(){
	alert('All the items are removed from the cart!');
	$scope.refreshCart();})
}
	    
$scope.calculateGrandTotal=function()
{
var grandTotal=0.0
for(var i=0;i<$scope.cart.cartItem.length;i++)
grandTotal=grandTotal+$scope.cart.cartItem[i].price;
return grandTotal;
}

});