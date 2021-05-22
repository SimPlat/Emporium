<script>
    import { onMount } from 'svelte';
    import CartItemForm from "./CartItemForm.svelte";
    import {push, pop, replace} from 'svelte-spa-router'
    let itemList = [];

    onMount(async () => {
		
        var requestOptions = {
        method: 'GET',
        redirect: 'follow',
        credentials: 'include'
        };

        let _itemList =[];
        fetch("http://localhost:8080/api/cart", requestOptions)
        .then(response => response.text())
        .then(result=>{
            let itemListJSON = JSON.parse(result);
            for( let key in itemListJSON){
                if(parseInt(itemListJSON[key]) >0)
                    _itemList.push({"name":key, "displayName":key, "quantity":itemListJSON[key]});
            }
            itemList = _itemList;
        })
        .catch(error => console.log('error', error));;
	});

    function generateList() {
        push("/list");
    }


</script>



<div class="shopping-cart">
    {#each itemList as item}
        <CartItemForm bind:params={item}></CartItemForm>
    {:else}
        Δεν βρέθηκαν προϊόντα
    {/each}
    {#if itemList.length != 0}
        <div class="button-list"><button on:click={generateList}>Υπολογισμός Λίστας</button></div>
    {/if}
</div>
<style>
    .button-list{
        display: flex;
        justify-content: center;
    }
    
    .button-list button{
        margin: 40px 0px;
        border-radius: 10px;
        width: 200px;
        height: 2.4em;
        background: #c83647;
        font-size: 1em;
        font-weight: bold;
        color: #32292f;
        outline: none;
        cursor: pointer;
    }
    .shopping-cart {
        display: flex;
        flex-direction: column;
    }
</style>