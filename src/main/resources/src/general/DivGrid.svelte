<script>
    import DivGridItem from "../general/DivGridItem.svelte";
    export let divGrindItems;
    export let onDivClick;
    export let classColor;
    export let onDivClickName;


    function back(){
        window.history.back();
    }

    

</script>

<div class = "products">
    <div class="container">
        <div class="product-items">
            {#if divGrindItems.length !=0}
                {#each divGrindItems as item}
                    <DivGridItem bind:item={item} bind:onClick={onDivClick} onClickName={onDivClickName} classColor={classColor}></DivGridItem>
                {/each}
            {:else}
                <h1> Δεν βρέθηκαν προϊόντα <button on:click={back}> Επιστροφή</button></h1>
            {/if}
        </div>
    </div>
</div>

<style>
    .products{
        background: var(--alice-blue);
        width: 70vw;
        min-height: 77.65vh;
        padding-top:20px;
        margin-left: 10vw;
        margin-right: 10vw;
        padding-left: 5vw;
        padding-right: 5vw;
        padding-bottom: 20px;
        background-color: #f1f1f1a5;
    }


    .product-items{        
        display: grid;
        gap: 25px 25px;
    }


    /* Media Queries */
    @media screen and (min-width: 992px){
        .product-items{
            grid-template-columns: repeat(2, 1fr);
        }
    }

    @media screen and (min-width: 1200px){
        .product-items{
            grid-template-columns: repeat(3, 1fr);
        }

    }

    @media screen and (min-width: 1336px){
        .product-items{
            grid-template-columns: repeat(4, 1fr);
        }
    }

    @media screen and (min-width: 1921px){
        .product-items{
            grid-template-columns: repeat(6, 1fr);
        }
    }
</style>