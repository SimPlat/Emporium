<script>
    import {alterItemQuantity, removeItemFromCart} from "../EmporiumAPI";
    export let params;


    $: test(params);

    function test(params) {
        params.value
    }

    function increment(){
        params.quantity+=1;
        alterItemQuantity(params);
    }

    function decrement(){
        if(params.quantity>0){
            params.quantity-=1;
            alterItemQuantity(params);
        }
        else{
            removeItemFromCart(params);
        }
    }
</script>

<div class="item">
    <div class="buttons">
        <span on:click={removeItemFromCart(params)} class="delete-btn">x</span>
    </div>

    <div class="image">
        <img src={params.item.name} alt="" />
    </div>

    <div class="description">
        <p>{params.item.displayName}</p>
    </div>

    <div class="quantity">
        <button class="plus-btn" type="button" name="button" on:click={increment}>
            +
        </button>
        <input type="number" name="name" bind:value={params.quantity} />
        <button class="minus-btn" type="button" name="button" on:click={decrement}>
            -
        </button>
    </div>
</div>

<style>
    .item {
        width:40%;
        background-color: #fff;
        margin-top: 10px;
        margin-left: 20%;
        margin-right: 20%;
        padding-left: 60px;
        padding-right: 20px;
        padding-top: 14px;
        padding-bottom: 14px;
        height: 100px;
        display: flex;
    }
    .buttons {
        font-size: 30px;
        margin: auto 0;
        position: relative;
        margin-right: 60px;
    }
    .delete-btn{
        display: inline-block;
        cursor: pointer;
        width: 18px;
        height: 17px;
    }
    .image {
        margin: auto 0;
        margin-right: 50px;
    }

    .description {
        margin: auto 0;
        padding-top: 10px;
        margin-right: 60px;
        width: 115px;
    }

    .quantity {
        margin: auto 0;
        margin-left: 50px;
        margin-right: 60px;
    }
    .quantity input {
        -webkit-appearance: none;
        border: none;
        text-align: center;
        width: 32px;
        font-size: 16px;
        color: #43484d;
        font-weight: 300;
    }

    button[class*="btn"] {
        width: 30px;
        height: 30px;
        background-color: #e1e8ee;
        border-radius: 6px;
        border: none;
        cursor: pointer;
    }
    .minus-btn  {
        font-size: large;
        font-weight: bold;
        margin-bottom: 3px;
    }
    .plus-btn  {
        font-size: large;
    }

    button:focus,
    input:focus {
        outline: 0;
    }


    /* Media Queries */
    @media screen and (min-width: 1000px){
        .item{
            width:60%;
            margin-left: 20%;
            margin-right: 20%;
            padding-left: 50px;
            padding-right: 20px;
        }
    }

       /* Media Queries */
       @media screen and (min-width: 500px){
        .item{
            width:70%;
            margin-left: 15%;
            margin-right: 15%;
            padding-left: 40px;
            padding-right: 20px;
        }
    }

</style>