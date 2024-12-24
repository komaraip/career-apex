@foreach ($candidateExperiences as $experience)
    <tr>
        <td>{{ $experience->company }}</td>
        <td>{{ $experience->department }}</td>
        <td>{{ $experience->designation }}</td>
        <td>{{ $experience->start }} - {{ $experience->currently_working === 1 ? 'Current' : $experience->end }}</td>
        <td>
            <a href="{{ route('candidate.experience.edit', $experience->id) }}"
                class="btn-sm btn btn-primary edit-experience" data-bs-toggle="modal" data-bs-target="#experienceModal"><i
                    class="fas fa-edit"></i></a>
            <a href="{{ route('candidate.experience.destroy', $experience->id) }}"
                class="btn-sm btn btn-danger delete-experience"><i class="fas fa-trash-alt"></i></a>
        </td>

    </tr>
@endforeach
