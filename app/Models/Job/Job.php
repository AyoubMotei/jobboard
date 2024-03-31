<?php

namespace App\Models\job;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use HasFactory;

    protected $table ='jobs';

    protected $fillable=[
        'id',
        'job_title',
        'job_region',
        'company',
        'job_type',
        'vacancy',
        'experience',
        'salary',
        'gender',
        'application_deadline',
        'job_description',
        'responsibilities',
        'education_experience',
        'otherbenifits',
        'category',
        'image',

    ];

    public $timestamps = true;

}
