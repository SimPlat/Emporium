<script>
    import CartItemForm from "./CartItemForm.svelte";
    import { Item, CartItem} from "../EmporiumAPI";



    let tItem = new CartItem(new Item("Μπανάνα Dole","./imgs/categories/banana.svg"), 20);
    let tItem2 = new CartItem(new Item("Μπανάνα Dole","./imgs/categories/banana.svg"), 10);
    let itemList = [tItem,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2,tItem2];
</script>



<div class="shopping-cart">
    {#each itemList as item}
        <CartItemForm bind:params={item}></CartItemForm>
    {/each}
</div>
<style>
    
    .shopping-cart {
        display: flex;
        flex-direction: column;
    }
</style>