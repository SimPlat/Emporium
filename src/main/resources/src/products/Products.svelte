<script>
    import { onMount } from 'svelte';
    import Header from "../general/Header.svelte";
    import DivGrid from "../general/DivGrid.svelte";
    import Footer from "../general/Footer.svelte";
    import {push, pop, replace} from 'svelte-spa-router'
    import {getProducts, addItemToCart } from '../EmporiumAPI.js';


    export let params = {};
    /* Here is the list with names for the divs */
    /* later it could be converted as product list*/
    let productDisplayName = params.productName;
    let divGrindItems = [];

    onMount(async () => {
		
        var requestOptions = {
        method: 'GET',
        redirect: 'follow',
        credentials: 'include'
        };

        fetch("http://localhost:8080/api/products/"+params.productName, requestOptions)
        .then(response => response.text())
        .then(result=>{
            divGrindItems = JSON.parse(result);
            productDisplayName = divGrindItems[0].category.displayName;
        })
        .catch(error => console.log('error', error));;
	});

    /* Decide what will happen when someone clicks on a div */
    let onClick = function (item){

        var myHeaders = new Headers();
        myHeaders.append("Content-Type", "application/json");
        var raw = '{\"'+item.name+'\":1}'
        console.log(raw);
        var requestOptions = {
        method: 'POST',
        headers: myHeaders,
        body: raw,
        credentials: 'include',
        redirect: 'follow'
        };

        fetch("http://localhost:8080/api/cart", requestOptions)
        .then(response => response.text())
        .then(result => console.log(result))
        .catch(error => console.log('error', error));
    }

</script>

<Header bind:name={productDisplayName}></Header>
<DivGrid bind:divGrindItems={divGrindItems} onDivClickName="Προσθήκη" bind:onDivClick={onClick} classColor={params.categoryName}></DivGrid>
<Footer></Footer>
