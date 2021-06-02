<script>
    import { onMount } from 'svelte';
    import Header from "../general/Header.svelte";
    import DivGrid from "../general/DivGrid.svelte";
    import Footer from "../general/Footer.svelte";
    import {push, pop, replace} from 'svelte-spa-router'

    /* Here is the list with names for the divs */
    /* later it could be converted as product list*/
    let divGrindItems = [];

    onMount(async () => {
		
        var requestOptions = {
        method: 'GET',
        redirect: 'follow',
        credentials: 'include'
        };

        fetch("https://localhosts:8080/api/categories", requestOptions)
        .then(response => response.text())
        .then(result=>{
            divGrindItems = JSON.parse(result);
        })
        .catch(error => console.log('error', error));;
        console.log(divGrindItems);
	});

    /* Decide what will happen when someone clicks on a div */
    let onClick = function (item){
        console.log("selected category-> "+item.name);
        push("/category/"+item.name);
    }

</script>
<Header name="Κατηγορίες Προιόντων"></Header>
     <DivGrid bind:divGrindItems={divGrindItems} onDivClickName="Άνοιγμα" bind:onDivClick={onClick}></DivGrid>
<Footer></Footer>
