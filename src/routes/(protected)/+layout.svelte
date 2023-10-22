<script lang="ts">
	// import Logo from '$lib/components/logo.svelte';
	import { APP_NAME } from '$lib/config/constants';
</script>

<svelte:head>
	<title>{APP_NAME}</title>
	<meta
		name="description"
		content="{APP_NAME} - An open source recipe stuff."
	/>
</svelte:head>

<div class="flex flex-col justify-center px-2 py-2 lg:px-2 mx-auto">
	<div class="card p-6 pb-8 pt-8">
		<div>
			<slot />
		</div>
	</div>
</div>
