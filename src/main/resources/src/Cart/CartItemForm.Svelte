<script>
    import {alterItemQuantity, removeItemFromCart} from "../EmporiumAPI";
    export let params;

    const onKeyPress = e => {
        if (e.charCode === 13)
            effectQuantity();
    };

    function zero(){
        params.quantity = 0;
        effectQuantity();
    }

    function increment(){
        params.quantity+=1;
        effectQuantity();
    }

    function effectQuantity(){
        console.log(params.quantity);
        if(params.quantity == undefined)
            return;
        if(params.quantity == null)
            return;
        // console.log(params.name, quantity);
        var myHeaders = new Headers();
            myHeaders.append("Content-Type", "application/json");
            var raw = '{\"'+params.name+'\":'+params.quantity+'}'
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
            // .then(result => console.log(result))
            .catch(error => console.log('error', error));
    }

    function decrement(){
        if(params.quantity>0){
            params.quantity-=1;
        }
        else{
            params.quantity = 0;
        }
        effectQuantity();
    }
</script>

{#if params.quantity>0}
    <div class="item">
        <div class="buttons">
            <span on:click={zero} class="delete-btn">x</span>
        </div>

        <div class="image">
            <img src="imgs/Categories/{params.name}.svg"alt="" />
        </div>

        <div class="description">
            <p>{params.displayName}</p>
        </div>

        <div class="quantity">
            <button class="plus-btn" type="button" name="button" on:click={increment}>
                +
            </button>
            <input type="number" name="name" bind:value={params.quantity} on:keypress={onKeyPress} />
            <button class="minus-btn" type="button" name="button" on:click={decrement}>
                -
            </button>
        </div>
    </div>
{/if}

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

        /* Chrome, Safari, Edge, Opera */
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
    }

    /* Firefox */
    input[type=number] {
    -moz-appearance: textfield;
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