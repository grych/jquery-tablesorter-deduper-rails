### About

This gem is to include [jquery.tablesorter.deduper](https://github.com/grych/jquery.tablesorter.deduper) into Rails assets pipeline.

DeDuper is a Tablesorter widget to hide duplicated values in columns

#### Before:

    +------+--------+
    | John | Smith  |
    | John | Doe    |
    | Ted  | Doe    |
    +------+--------+

#### After:

    +------+--------+
    | John | Smith  |
    |      | Doe    |
    | Ted  |        |
    +------+--------+

## [Example Page](http://www.tg.pl/deduper/ "DeDup example")

## 1. Add to Gemfile:

    gem 'jquery-tablesorter-deduper-rails'

## 2. Add to application.js

    //= require jquery.tablesorter.deduper

## 3. Define a style for "hidden" elements:

    <style type="text/css">
      .barely-visible {
        color: rgba(0, 0, 0, 0.1);
      }
    </style>

## 4. Add widget to the tablesorter:

    $("table").tablesorter({
      theme: 'default',
      widgets: ['zebra', 'deduper'],
      widgetOptions : {
        dupClass : 'barely-visible',
        dupCompareFunction: function(x, y) { 
          return x.toLowerCase() == y.toLowerCase(); 
        }      
      }
    });

### Options:

* dupClass, default: 
'light': class for duplicated elements
* dupCompareFuction, default: function(x, y) {return x.toLowerCase() == y.toLowerCase();}: function for comparing strings

### Metadata:

data-deduper="false" in table header to disable dedupering the given header

## CREDITS
(c) 2015 Tomek "Grych" Gryszkiewicz

grych@tg.pl

https://github.com/grych/jquery.tablesorter.deduper

MIT License

