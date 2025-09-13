<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class AppliedJob extends Model
{
    use HasFactory;

    function job() : BelongsTo {
        return $this->belongsTo(Job::class, 'job_id', 'id');
    }

    function candidate() : BelongsTo {
        return $this->belongsTo(Candidate::class, 'candidate_id', 'user_id');
    }
}
