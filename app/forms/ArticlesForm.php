<?php

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Date;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Forms\Element\Submit;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\StringLength as StringLength;
use Phalcon\Filter;

/**
 * Class ArticlesForm
 *
 * Form for Articles CRUD operations
 */
class ArticlesForm extends Form
{
    /**
     * Initialize the articles form
     *
     * @param null $entity
     * @param array $options
     */
    public function initialize($entity = null, $options = array())
    {
        if (!isset($options['edit'])) {
            $element = new Text("id");
            $this->add($element->setLabel("Id"));
        } else {
            $this->add(new Hidden("id"));
        }

        /**
         * Title element
         */
        $title = new Text("title",
            [
                'maxlength' => 80,
                'placeholder' => 'Name of the Article',
            ]
        );
        $title->setLabel("Title");
        $title->setFilters(['string', 'trim']);
        $title->addValidators([
            new PresenceOf([
                'message' => 'Title is required'
            ]),
            new StringLength([
                "max"            => 80,
                "min"            => 2,
                "messageMaximum" => "The title of your article is too long!",
                "messageMinimum" => "The title of your article is too short!",
            ])
        ]);
        $this->add($title);

        /**
         * Summary element
         */
        $summary = new TextArea("summary",
            [
                'maxlength' => 500,
                'placeholder' => 'Summary of the Article',
                'rows' => 4,
            ]
        );
        $summary->setLabel("Summary");
        $summary->setFilters(['string', 'trim']);
        $summary->addValidators([
            new PresenceOf([
                'message' => 'Summary is required'
            ]),
            new StringLength([
                "max"            => 500,
                "min"            => 2,
                "messageMaximum" => "The summary of your article is too long!",
                "messageMinimum" => "The summary of your article is too short!",
            ])
        ]);
        $this->add($summary);

        /**
         * Content element
         */
        $content = new TextArea("content",
            [
                'maxlength' => 1500,
                'placeholder' => 'Content of the Article',
                'rows' => 10,
            ]
        );
        $content->setLabel("Content");
        $content->setFilters(['string', 'trim']);
        $content->addValidators([
            new PresenceOf([
                'message' => 'Content is required'
            ]),
            new StringLength([
                "max"            => 1500,
                "min"            => 2,
                "messageMaximum" => "The content of your article is too long!",
                "messageMinimum" => "The content of your article is too short!",
            ])
        ]);
        $this->add($content);

        /**
         * Date element
         */
        $date = new Date("date");
        $date->setLabel("Publication Date");
        $date->setFilters(['string', 'trim']);
        $date->addValidators([
            new PresenceOf([
                'message' => 'Date is required'
            ])
        ]);
        $this->add($date);
    }
}
