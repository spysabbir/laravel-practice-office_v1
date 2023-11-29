<?php

namespace App\Console\Commands;

use App\Models\User;
use Illuminate\Console\Command;

class CreateUsers extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'create:users {count}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Create Dummy Users for your App';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $numberOfUsers = $this->argument('count');

        for ($i = 0; $i < $numberOfUsers; $i++) {
            User::factory()->create();
        }
    }
}
