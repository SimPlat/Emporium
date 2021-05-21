<script>
	export let props;
	
	function cSelected(){
		props.selected = !props.selected;
	}
</script>

<button class:selected ="{props.selected == true}" on:click={cSelected}>{props.name}</button>

<style>
    .selected{
        background-color: blue;
    }

    button {
        font-size: 1.1em;
        border: none;
        outline: none;
        padding: 8px 12px;
        color: #f1f1f1;
        cursor: pointer;
        background-color: #c83647;
    }
</style>