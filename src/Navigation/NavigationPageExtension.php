<?php

namespace Inferno\InfernoNavigation\Navigation;
use Page;
use SilverStripe\Core\Extension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\SiteConfig\SiteConfig;
use UncleCheese\DisplayLogic\Extensions\DisplayLogic;
use UncleCheese\DisplayLogic\Forms\Wrapper;

class NavigationPageExtension extends Extension{

    private static $db = [
        'MegaContent' => 'HTMLText',

    ];

    public function getCMSFields() {
        $this->extend('updateCMSFields', $fields);

        return $fields;
    }



    public function updateCMSFields(FieldList $fields) {
        $SiteConfigSettings = SiteConfig::current_site_config();

        $fields->addFieldsToTab('Root.Navigation',
            HTMLEditorField::create('MegaContent', 'Mega nav Content')

        );

    }
}
