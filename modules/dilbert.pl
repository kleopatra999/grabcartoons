$COMIC{dilbert} = {
		   'Title' => 'Dilbert',
		   'Base' => 'http://www.dilbert.com',
		   'Page' => '{Base}/fast',
                   'Regex' => qr!<img[^<>]*\bimg-comic\b[^<>]*src="([^"<>]*)"!i,
                   #'Regex' => qr!SRC="(/dyn/str_strip/[^<>]*strip\.print\.(gif|jpg))[^<>]*"!i,
                   #'Prepend' => '{Base}',
                  };
