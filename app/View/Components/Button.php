<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Button extends Component
{
    /**
     * The alert type.
     *
     * @var string
     */
    public $type;
    /**
     * The alert type.
     *
     * @var string
     */
    public $message;
    /**
     * The alert type.
     *
     * @var string
     */
    public $selected;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($type, $message, $selected)
    {
        //
        $this->type = $type;
        $this->message = $message;
        $this->selected = $selected;
        // dd($this);
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.button');
    }
    /**
     * Determine if the given option is the currently selected option.
     *
     * @param  string  $option
     * @return bool
     */
    public function isSelected($option)
    {
        return $option === $this->selected;
    }
}
