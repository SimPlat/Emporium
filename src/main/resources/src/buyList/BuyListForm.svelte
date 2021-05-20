<script>
    import { Item, CartItem} from "../EmporiumAPI";
    import BuyListItem from "./BuyListItem.svelte";


    let tItem = new CartItem(new Item("Μπανάνα Dole","./imgs/categories/banana.svg"), 20);
    let tItem2 = new CartItem(new Item("Μπανάνα Dole","./imgs/categories/banana.svg"), 10);
    let itemList = [tItem,tItem2];

    let supermarkets = ["Masoytis", "Lidl"];
</script>


<div class="shopping-cart">
    {#each supermarkets as market}
        <h1> {market}</h1>
        {#each itemList as item}
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