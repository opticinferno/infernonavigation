<?php

namespace Inferno\InfernoNavigation\Navigation;
use Page;
use SilverStripe\Core\Extension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class NavigationPageExtension extends Extension{

    private static $db = [
        'MegaContent' => 'HTMLText',

    ];

    public function getCMSFields() {
        $this->extend('updateCMSFields', $fields);

        return $fields;
    }



    public function updateCMSFields(FieldList $fields) {

        $fields->addFieldsToTab('Root.Navigation',
            HTMLEditorField::create('MegaContent', 'Mega nav Content')

        );

    }
}
