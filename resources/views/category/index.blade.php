<x-guest-layout>
<table id="category">
    <thead>
    <tr>
        <th>Tên</th>
        <th>Trạng thái</th>
    </tr>
    </thead>
    <tfoot>
        <tr>
            <th></th>
            <th></th>
        </tr>
    </tfoot>
</table>
<script>

$('#category').DataTable({
    processing: true,
    serverSide: false,
    ordering: false,
    ajax: '{{ route("cat.getArray") }}',
    columns: [
        {data: 'name', name: 'name'},
        {data: 'status', name: 'status'},
    ],
    initComplete: function () {
        this.api().columns().every(function () {
            var column = this;
            var input = document.createElement("input");
            $(input).appendTo($(column.footer()).empty())
            .on('change', function () {
                column.search($(this).val(), false, false, true).draw();
            });
        });
    }
});

</script>
</x-guest-layout>

