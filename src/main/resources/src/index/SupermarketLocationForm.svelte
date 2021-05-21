<script>
    import {push, pop, replace} from 'svelte-spa-router';
    import MarketList from "./MarketList.svelte";
    import {getAvailableSupermarketsLocation,sendSelectedMarkets} from "../EmporiumAPI";

    let marketList;
    let selectedMarkets;
	let distance = 50;
    let coords;
    let location = null;
    let searchLocation;


    location = validateLocation(searchLocation);


    function translateCoordsToCityName(_coords){
        location = "Πυλαια"
        searchLocation = location;
        marketList = getAvailableSupermarketsLocation(location)
    }

    function validateLocation(searchLocation){
        console.log(searchLocation);
        location = searchLocation;
        marketList = getAvailableSupermarketsLocation(location)
    }

    function getAutoCoords(){
            var options = {
                enableHighAccuracy: true,
                timeout: 5000,
                maximumAge: 0
            };

            function error(err) {
                console.warn('ERROR(' + err.code + '): ' + err.message);
            };

            function success(pos) {
                var crd = pos.coords;
                translateCoordsToCityName([crd.latitude, crd.longitude])
            };

            navigator.geolocation.getCurrentPosition(success, error, options);
    }

    /* moves to the next page */
    function storeMarkets(){
        sendSelectedMarkets(selectedMarkets);
        push("/categories");
    }

</script>


<div class="center-container">
    <div>
        <img class="center-logo" src="imgs/icons/logo.svg" alt="logo">
        <div class="center-form">
            <input bind:value={searchLocation} class="perioxi-input" type="text" name="perioxi" placeholder="Περιοχή..."><img class="input-location-icon" src="imgs/icons/locationIcon.svg" alt="gps marker" on:click={getAutoCoords}><br>
            <div class="apostasi-div">Απόσταση <input bind:value={distance} type="range" min="1" max="101" class="apostasi-input" id="myRange"> <span >{distance} </span>  <span class="apostasi-km">KM</span></div>
            <div class="submit-button-div"><input class="submit-button" type="submit" value="Αναζήτηση" on:click={validateLocation(searchLocation)}></div>
            {#if location != null}
                <h2> Διαθέσιμα καταστήματα</h2>
                <MarketList bind:selectedMarkets={selectedMarkets} bind:marketList={marketList}></MarketList>
                {#if selectedMarkets === []}
                    <h2 class="error"> δεν βρέθηκαν καταστήματα</h2>
                {:else}
                    <div class="submit-button-div"><input class="submit-button" type="submit" value="Ψώνισε !" on:click={storeMarkets}></div>
                {/if}
            {/if}
        </div>
    </div>
</div>

<style>
	
    h2.error{
        margin-top: 20px;
        font-weight:bold;
    }
    .center-container{
        display: flex;
        justify-content: center;
        flex-direction: column;  /* <--- I added this */
        align-items: center;   /* <--- Change here */
        height: 100vh;
        width: 100%;
    }

    .center-logo{
        width:100%;
        margin-bottom: 20px;
    }

    .center-form{
        color: #983647;
        font-size: 2em;
        font-style: italic;
    }

    h2{
        margin-top: 20px;
    }

    .perioxi-input {
        background-color: #f1f1f1; 
        border-radius: 16px;
        width: 540px;
        height: 90px;
        color: #983647;
        font-size: 1em;
        padding-left: 30px;
        padding-right: 40px;
        /* xreiazete */
        outline: none;
        border:2px solid #983647;
        margin-bottom: 25px;
    }

    .input-location-icon{
        position: relative;
        top:10px;
        right: 55px;
        width:50px;
        height:50px;
        cursor: pointer;
    }

    .perioxi-input::placeholder{
        color: #983647;
        
        
    }

    .apostasi-div{
        padding-left: 25px;
    }

    .apostasi-km{
        padding-left: 10px;
        position: absolute;
    }

    .apostasi-input{
        position: relative;
        top: -7px;
        margin-left:20px;
        margin-right: 20px;
        margin-bottom: 30px;
        -webkit-appearance: none;  /* Override default CSS styles */
        appearance: none;
        width: 280px;
        height: 2px;
        background-color: #32292f;
        border: 22px solid color #c83647;
        outline: none;
    }

    .apostasi-input::-webkit-slider-thumb {
        -webkit-appearance: none;  /* Override default CSS styles */
        appearance: none;
        border-radius: 16px;
        width: 30px;
        height: 30px;
        background: #983647;
        cursor: pointer;
        outline: none;
    }
    
    .submit-button-div{
        display: flex;
        justify-content: center;
        flex-direction: column;  /* <--- I added this */
        align-items: center;  
    }

    .submit-button{
        border-radius: 10px;
        width: 200px;
        height: 80px;
        background: #c83647;
        font-size: 1em;
        font-weight: bold;
        color: #32292f;
        outline: none;
        cursor: pointer;
    }

</style>