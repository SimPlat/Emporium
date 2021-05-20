<script>
    export let name="";
    export let displayCart=true;

    function back(){
        window.history.back();
    }

    function openCart(){
        window.location.href = "/#/cart";
    }
</script>
<header>
    <div class="grid-container">
        <div class="title">
            <h1>
                    {name}
            </h1>
        </div>
        <div class="space1"></div>
        {#if displayCart==true}
        <div class="Cart" on:click={openCart}><img class="" src="imgs/icons/shopping-cart.svg" alt="Cart"></div>
        {:else}
        <div class="Cart" on:click={back}><img class="" src="imgs/icons/shopping-cart.svg" alt="Cart"></div>
        {/if}
    </div>
</header>
<style>
    header {
    width: 70vw;
    margin-left: 10vw;
    margin-right: 10vw;
    padding-left: 5vw;
    padding-right: 5vw;
    height: 220px;
    background-color: #f1f1f1a5;
    }   

    header h1 {
        font-family: sans-serif;
        font-weight: bold;
        font-size: 4em;
        color:#983647;
        text-align: left;
        width:100%;
    }

    header .grid-container {
        height:100%;
        display: grid;
        grid-template-columns: 2fr 2fr 0.8fr;
        grid-template-rows: 1fr;
        gap: 0px 0px;
        grid-template-areas: "title space1 Cart";

    }
    
    header .title { grid-area: title; }
    header .Cart { grid-area: Cart;}
    header .space1 { grid-area: space1;}

    header .grid-container div {
        display: grid;
        place-items: center;
    }

    .Cart img {
        height: 40%;
        cursor:pointer;
    }
</style>