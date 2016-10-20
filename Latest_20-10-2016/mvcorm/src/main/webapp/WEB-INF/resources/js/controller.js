var app=angular.module("app",[])
.controller("bookController",function($scope,$http){

	$scope.getBookList = function(){
		   $http.get('http://localhost:8080/mvcorm/getBookList').success(function (data){
		       $scope.books = data;
		   });
		};
});
