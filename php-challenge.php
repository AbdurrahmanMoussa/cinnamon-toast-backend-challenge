<?php
function convert_to_acronym($phrase)
{
    // Split words on space and hyphens
    $delimiters = '/[ -]+/';
    $words = preg_split($delimiters, $phrase);
    $first_letters = "";

    // Loop through words and capture the first actual letter
    foreach ($words as $word) {
        if (!empty($word) && preg_match('/[a-zA-Z]/', $word, $match)) {
            $first_letters .= $match[0];
        }
    }

    return strtoupper($first_letters);
}

echo convert_to_acronym("As Soon As Possible") . "\n";
echo convert_to_acronym("Liquid-crystal display") . "\n";
echo convert_to_acronym("Thank George It's Friday!") . "\n";
echo convert_to_acronym("(-.Thank George It's Friday!") . "\n";
