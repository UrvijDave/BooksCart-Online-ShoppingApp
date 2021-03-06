
var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http){

    $scope.refreshCart = function () {
        $http.get('/BooksCart/rest/cart/'+$scope.cartId).success(function (data) {
           $scope.cart=data;
          
        });
    };

   $scope.clearCart = function () {
        $http.delete('/BooksCart/rest/cart/'+$scope.cartId).success(function (data) {
            $scope.refreshCart();
            
    });
   };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function addToCart(productId) {
    	alert(productId);
        $http.put('/BooksCart/rest/cart/add/'+productId).success(function () {
            alert("Product successfully added to the cart!")
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put ('/BooksCart/rest/cart/remove/'+productId).success(function (data) {
            $scope.refreshCart();
        });
    };

    $scope.calGrandTotal = function () {
        var grandTotal=0;
        alert($scope.cart.cartItems.size);
        for (var i=0; i<$scope.cart.cartItems.length; i++) {
            grandTotal+=$scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    };
});