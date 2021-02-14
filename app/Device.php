<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Device extends Model
{
    public function applications()
    {
        return $this->belongsToMany(Application::class,'devices_applications','device_id','application_id');
    }
}
