<script>
    import { onMount } from 'svelte';
    import CartItemForm from "./CartItemForm.svelte";
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



</script>



<div class="shopping-cart">
    {#each itemList as item}
        <CartItemForm bind:params={item}></CartItemForm>
    {:else}
        loading..
    {/each}
</div>
<style>
    
    .shopping-cart {
        display: flex;
        flex-direction: column;
    }
</style>