<script>
    import BuyListItem from "./BuyListItem.svelte";
    import { onMount } from 'svelte';
    let supermarkets = [];
    onMount(async () => {
		
        var requestOptions = {
        method: 'GET',
        redirect: 'follow',
        credentials: 'include'
        };

        let _itemList =[];
        fetch("http://localhost:8080/api/cart/result", requestOptions)
        .then(response => response.text())
        .then(result=>{
            let tes = JSON.parse(result);
            let products = {};
            for(let k in tes){
                let quantity = tes[k];
                if(quantity == 0)
                    continue;
                let product = k.replace('[','').replace(']','').replaceAll(', ',',').split(',');
                if(products[product[2]] == undefined)
                    products[product[2]] = [];
                products[product[2]].push({"quantity":quantity,"name":product[0],"displayName":product[1],"retailer":product[2],"price":product[3]});
            }
            let arrayProducts =[];
            for(let k in products){
                arrayProducts.push([products[k], k]);
            }
            supermarkets = arrayProducts;
        })
        .catch(error => console.log('error', error));;
        
	});
</script>


<div class="shopping-cart">
    {#each supermarkets as market}
        <h1>{market[1]}</h1>
        {#each market[0] as item}
            <BuyListItem bind:params={item}></BuyListItem>
        {/each}
    {/each}
</div>
<style>
    h1{
        font-weight: bold;
        font-size: 2em;
        line-height: 2em;
    }
    .shopping-cart {
        display: flex;
        flex-direction: column;
    }
</style>