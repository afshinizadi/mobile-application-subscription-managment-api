<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Application extends Model
{
    public function devices()
    {
        return $this->belongsToMany(Device::class,'devices_applications','device_id','application_id');
    }
}
