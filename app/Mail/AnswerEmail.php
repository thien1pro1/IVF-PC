<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class AnswerEmail extends Mailable
{
    use Queueable, SerializesModels;

    public $data ;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('thien1pro1@gmail.com','Bệnh viện Quốc tế Phương Châu')
        ->subject($this->data['subject'])
        ->view('emails.answerEmail');

    }
}