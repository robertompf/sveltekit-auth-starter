<script lang="ts">
	import { i } from '@inlang/sdk-js';
	import { Table, tableMapperValues } from '@skeletonlabs/skeleton';
	import type { TableSource } from '@skeletonlabs/skeleton';
	import { drawerStore } from '@skeletonlabs/skeleton';
	import type { DrawerSettings } from '@skeletonlabs/skeleton';
	import { PlusCircle } from 'lucide-svelte';

	export let data;

	const tableSimple: TableSource = {
		// A list of heading labels.
		head: ['Nome', 'Categoria', 'Ações'],
		// The data visibly shown in your table body UI.
		body: tableMapperValues(data.result, ['nome', 'unidadeCompraId']),
		// Optional: The data returned when interactive is enabled and a row is clicked.
		// meta: tableMapperValues(data.result, ['position', 'name', 'symbol', 'weight']),
		// Optional: A list of footer labels.
		foot: ['Total', '', '<code class="code">5</code>']
	};
</script>

<div class="grid grid-cols-4">
	<div class="col-span-3">
		<h3>{i('ingredients')}</h3>
	</div>
	<div class="justify-self-end">
		<button type="button" class="btn variant-filled">
			<span><PlusCircle /></span>
			<span>{i('new')}</span>
		</button>
	</div>
</div>

<hr class="!border-t-2 mt-2 mb-6" />

<Table source={tableSimple} />
