<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Classes;

class SessionAlert extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:sessionAlert';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send an alert mail to all teachers one hour before start of a class';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        Classes::alertMail();
        \Storage::disk('local')->put('fiaaaasasle.txt', 'Conteasasasqqqqqnasasts');
        echo "chal gai";
    }
}
