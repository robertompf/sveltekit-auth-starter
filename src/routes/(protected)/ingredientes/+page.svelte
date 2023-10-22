<script lang="ts">
	import { i } from '@inlang/sdk-js';
	import { Table, tableMapperValues  } from '@skeletonlabs/skeleton';
	import type { TableSource } from '@skeletonlabs/skeleton';

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

<div class="flex flex-row items-center mb-4">
	<h3>{i('ingredients')}</h3>
</div>

<hr class="!border-t-2 mt-2 mb-6" />

<Table source={tableSimple} />
