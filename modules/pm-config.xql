
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-ajmc_commentaries-web="http://www.tei-c.org/pm/models/ajmc_commentaries/web/module" at "../transform/ajmc_commentaries-web-module.xql";
import module namespace pm-ajmc_commentaries-print="http://www.tei-c.org/pm/models/ajmc_commentaries/print/module" at "../transform/ajmc_commentaries-print-module.xql";
import module namespace pm-ajmc_commentaries-latex="http://www.tei-c.org/pm/models/ajmc_commentaries/latex/module" at "../transform/ajmc_commentaries-latex-module.xql";
import module namespace pm-ajmc_commentaries-epub="http://www.tei-c.org/pm/models/ajmc_commentaries/epub/module" at "../transform/ajmc_commentaries-epub-module.xql";
import module namespace pm-ajmc_commentaries-fo="http://www.tei-c.org/pm/models/ajmc_commentaries/fo/module" at "../transform/ajmc_commentaries-fo-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ajmc_commentaries.odd" return pm-ajmc_commentaries-web:transform($xml, $parameters)
    default return pm-ajmc_commentaries-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ajmc_commentaries.odd" return pm-ajmc_commentaries-print:transform($xml, $parameters)
    default return pm-ajmc_commentaries-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ajmc_commentaries.odd" return pm-ajmc_commentaries-latex:transform($xml, $parameters)
    default return pm-ajmc_commentaries-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ajmc_commentaries.odd" return pm-ajmc_commentaries-epub:transform($xml, $parameters)
    default return pm-ajmc_commentaries-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:fo-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ajmc_commentaries.odd" return pm-ajmc_commentaries-fo:transform($xml, $parameters)
    default return pm-ajmc_commentaries-fo:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    