<script>
    import { onMount } from 'svelte';
    import Header from "../general/Header.svelte";
    import DivGrid from "../general/DivGrid.svelte";
    import Footer from "../general/Footer.svelte";
    import {push, pop, replace} from 'svelte-spa-router'
    import {getCategory, addItemToCart } from '../EmporiumAPI.js';


    export let params = {};
    /* Here is the list with names for the divs */
    /* later it could be converted as product list*/
    let res = getCategory(params.categoryName);
    let categoryDisplayName = "";
    let divGrindItems= [];

    /* Decide what will happen when someone clicks on a div */
    let onClick = function (item){
        console.log("selected category-> "+item.name);
        push("/product/"+item.name);
    }

    onMount(async () => {
		
        var requestOptions = {
        method: 'GET',
        redirect: 'follow',
        credentials: 'include'
        };

        fetch("https://localhost:8080/api/categories/"+params.categoryName, requestOptions)
        .then(response => response.text())
        .then(result=>{
            divGrindItems = JSON.parse(result);
            categoryDisplayName = divGrindItems[0].parent.displayName;
        })
        .catch(error => console.log('error', error));;
	});

</script>

<Header bind:name={categoryDisplayName}></Header>
<DivGrid bind:divGrindItems={divGrindItems} onDivClickName="Άνοιγμα" bind:onDivClick={onClick} classColor={params.categoryName}></DivGrid>
<Footer></Footer>
