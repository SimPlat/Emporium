<script>
	import MarketItem from './MarketItem.svelte'
	export let marketList;
	export let selectedMarkets;
	let props;
	$: setupProps(marketList);
	$: selectedMarkets = setupSelectedMarkets(props);
	
	function setupSelectedMarkets(_props){
		let _tempMarkets = [];
		_props.forEach(prop => {
			if(prop.selected){
				_tempMarkets.push(prop.name);
			}
		});
		return _tempMarkets;
	}

	function setupProps(supermarkets){
		props = [];
		supermarkets.forEach(marketName => {
			let _prop = {
				name: marketName,
				selected: false,
			}
			props.push(_prop);
		});
	}
</script> 

<div class="supermarket-container">
{#each props as item}
	<MarketItem bind:props={item}></MarketItem>
{/each}
</div>

<style>
    .supermarket-container{
        margin-top: 20px;
        margin-bottom: 20px;
        background-color: #f1f1f1a5;
    }
</style>