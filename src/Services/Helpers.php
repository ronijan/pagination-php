<?php namespace Ronijan\Pagination\Services;

class Helpers
{
	public function limitWords($text, $limit = 0)
	{
		if (str_word_count($text, 0) > $limit) {
			$words = str_word_count($text, 2);
			$pos = array_keys($words);
			$text = substr($text, 0, $pos[$limit]) . ' ...';
		}

		return $text;
	}
}
