@foreach ($candidateEducations as $education)
<tr>
    <td>{{ $education->level }}</td>
    <td>{{ $education->degree }}</td>
    <td>{{ $education->year }}</td>
    <td>
        <a href="{{ route("candidate.education.edit", $education->id) }}" class="btn-sm btn btn-primary edit-education" data-bs-toggle="modal"
            data-bs-target="#educationModal"><i class="fas fa-edit"></i></a>
        <a href="{{ route("candidate.education.destroy", $education->id) }}" class="btn-sm btn btn-danger delete-education"><i class="fas fa-trash-alt"></i></a>
    </td>

</tr>
@endforeach
