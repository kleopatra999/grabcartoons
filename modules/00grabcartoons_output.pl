# Output routines, here you can modify how the output page looks.

sub print_header {
  my $today=scalar localtime;
  print <<EOF;
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  
<html>
  <head>
    <title>Daily Comics</title>
  </head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

  <body bgcolor="white" text="black">
    <h1>Daily Comics - $today</h1>
EOF
}

sub print_footer {
  print <<EOF;

<hr>
<small>This page was created by <a href="http://grabcartoons.sourceforge.net/">grabcartoons</a>.</small>
  </body>
</html>
EOF
}

sub print_section {
  my ($name, $url, $mainurl, $err)=@_;
  print "<hr>\n<h2>$name</h2>\n\n";
  if ($err) {
    print "<em>$err</em><p>\n\n";
  }
  else {
    $mainurl=$url if !$mainurl;
    print "<a href=\"$mainurl\"><img src=\"$url\" alt=\"Today's $name cartoon\" border=0></a><p>\n\n";
  }
}

1;