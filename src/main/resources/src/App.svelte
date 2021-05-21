<script>
    import NotFoundPage from "./general/NotFoundPage.svelte"
    import Background from "./general/Background.svelte";
    import Router from 'svelte-spa-router';
    import Index from "./index/Index.svelte";
    import Categories from "./categories/Categories.svelte";
    import Category from "./category/Category.svelte";
    import Products from "./products/Products.svelte";
    import Cart from "./Cart/Cart.svelte";
    import BuyList from "./buyList/BuyList.svelte";
    import Test from "./Test.svelte";

    import {checkIfSuperMarketsAreSelected} from "./EmporiumAPI";
    checkIfSuperMarketsAreSelected();

</script>

<Background></Background>
<!-- <Router></Router> -->

<!-- /#/cart etc -->
<Router routes={{
    '/': Index,
    '/categories': Categories,
    '/category/:categoryName': Category,
    '/product/:productName': Products,
    '/cart/': Cart,
    '/list/': BuyList,
    '/test/': Test,
    '*':NotFoundPage
}}/>