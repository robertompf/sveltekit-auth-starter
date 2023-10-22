<script lang="ts">
	import Logo from '$lib/components/logo.svelte';
</script>

<svelte:head>
	<title>Secret Project</title>
	<meta
		name="description"
		content="Secret Project - An open source recipe stuff."
	/>
</svelte:head>
<div class="flex flex-col justify-center px-6 py-12 lg:px-8 mx-auto max-w-2xl">
	<div class="card p-6 pb-8 pt-8">
		<div>
			<div class="flex flex-row justify-center items-center mb-4">
				<div>
					<Logo size="42" />
				</div>
			</div>
			<div class="flex flex-row justify-center items-center mb-4">
				<h2>Secret Project</h2>
			</div>

			<hr class="!border-t-2 mt-2 mb-6" />
			<p class="text-center">
				Well...you know, secret!
			</p>
		</div>
	</div>
</div>

<style>
</style>
