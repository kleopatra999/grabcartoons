$COMIC{sinfest} = {
		   Title => 'Sinfest',
		   Page => 'http://sinfest.net/',
		   Regex => qr!src\s*=\s*".*?(\w+/comics/\d{4}-\d{2}-\d{2}\.(gif|jpg|png))!i,
                   TitleRegex => qr!alt="(.*?)"!,
		   Prepend => '{Page}',
		  };
