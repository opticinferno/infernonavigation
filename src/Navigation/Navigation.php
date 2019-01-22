<?php
namespace Inferno\InfernoNavigation\Navigation;

use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;
use TractorCow\Colorpicker\Forms\ColorField;
use UncleCheese\DisplayLogic\Extensions\DisplayLogic;
use UncleCheese\DisplayLogic\Forms\Wrapper;


class Navigation extends DataExtension {
    private static $db = [
        'NavigationColor'=> 'Color',
        'NavigationLinkColor' => 'Color',
        'DropdownColor' => 'Color',
        'DropdownContentColor' => 'Color',
        'SideBackColor' => 'Color',
        'SideColor' => 'Color',
        'BurgerColor' => 'Color',

        'NavPosition' => 'Varchar',
        'LinkLocation' => 'Varchar',
        'SearchBar' => 'Varchar',
        'CustomContentShow' => 'Varchar',
        'CustomContent' => 'HTMLText',
        'LogoWidth' => 'Varchar',
        'MenuType' => 'Varchar',

    ];
    public function getCMSFields() {
        $this->extend('updateCMSFields', $fields);

        return $fields;
    }



    public function updateCMSFields(FieldList $fields) {
        $NavPositionArray = ['basic' => 'Basic','fixed' => 'Fixed', 'absolute' => 'Absolute (Sits over banner)'];
        $LinkLocationArray = ['right' => 'Links on right side', 'left' => 'Links on left side'];
        $YesNo = ['no' => 'No', 'yes' => 'Yes'];
        $MenuTypeArray = ['NavNoChildren' => 'Simple', 'NavChildren'=>'Dropdown', 'NavMega' => 'Mega', 'NavSide' => 'Side'];
        $fields->addFieldToTab('Root.Navigation', ColorField::create('NavigationColor', 'Background Color'));
        $fields->addFieldToTab('Root.Navigation', ColorField::create('NavigationLinkColor', 'Link Color'));
        $fields->addFieldToTab('Root.Navigation', ColorField::create('BurgerColor', 'Burger Color'));
        $fields->addFieldToTab('Root.Navigation', Wrapper::create(ColorField::create('DropdownColor', 'Dropdown Background Color'))->displayIf('MenuType')->isEqualTo('NavMega')->end());
        $fields->addFieldToTab('Root.Navigation', Wrapper::create(ColorField::create('DropdownContentColor', 'Dropdown Text Color'))->displayIf('MenuType')->isEqualTo('NavMega')->end());
        $fields->addFieldToTab('Root.Navigation', Wrapper::create(ColorField::create('SideBackColor', 'Background color for Sidebar'))->displayIf('MenuType')->isEqualTo('NavSide')->end());
        $fields->addFieldToTab('Root.Navigation', Wrapper::create(ColorField::create('SideColor', 'Color for Sidenav'))->displayIf('MenuType')->isEqualTo('NavSide')->end());
        $fields->addFieldToTab('Root.Navigation', TextField::create('LogoWidth', 'Max Logo Width'));
        $fields->addFieldToTab('Root.Navigation', DropdownField::create('NavPosition', 'Navigation Positioning', $NavPositionArray));
        $fields->addFieldToTab('Root.Navigation', DropdownField::create('LinkLocation','Where will the links sit', $LinkLocationArray));
        $fields->addFieldToTab('Root.Navigation', DropdownField::create('SearchBar', 'Will there be a search bar', $YesNo));
        $fields->addFieldToTab('Root.Navigation', DropdownField::create('CustomContentShow', 'Will there be Custom Content',$YesNo));
        $fields->addFieldToTab('Root.Navigation', DropdownField::create('MenuType', 'Type of menu to display', $MenuTypeArray));
        $fields->addFieldToTab('Root.Navigation', Wrapper::create(HTMLEditorField::create('CustomContent', 'Custom Content'))->displayIf('CustomContentShow')->isEqualTo('yes')->end());

    }

}
