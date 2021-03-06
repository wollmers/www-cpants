use strict;
use warnings;
use WWW::CPANTS::Test;

test_kwalitee('package_version_matches_dist_version',
  ['JEROMEMCK/Net-ICQ-On-1.7.tar.gz', 0], # 1005
  ['ARCANEZ/WWW-Mailchimp-0.006_02.tar.gz', 0], # 1007
  ['IDIVISION/nginx.pm.tar.gz', 0], # 1059
  ['MALUKU/sofu-config/sofu-config-0.2.tar.gz', 0], # 1059
  ['ZLIPTON/Bundle-Bonsai-0.02.tar.gz', 0], # 1075
  ['ANDK/Memo-bindist-any-bin-2-archname-compiler.tar.gz', 0], # 1076
  ['IDIVISION/nginx-0.0.1.tar.gz', 0], # 1082
  ['MTHURN/Devel-Fail-Make-1.005.tar.gz', 0], # 1088
  ['ILYAZ/os2/tk/binary/update-03.zip', 0], # 1125

  # illegal provides
  ['DJERIUS/Lua-API-0.02.tar.gz', 0],

  # v-version without v in the dist version
  ['SHLOMIF/HTML-TabbedExamples-Generate-0.0.5.tar.gz', 1],
  ['JANDREW/Data-Walk-Extracted-0.024.004.tar.gz', 1],
  ['DOMM/Module-ExtractUse-0.33.tar.gz', 1],

  ['MEWILCOX/apache.authznetldap.02.tar.gz', 1], # 1051

  # provides without version(s)
  ['BURNERSK/Encoding-HandleUtf8-0.002.tar.gz', 0],
);

done_testing;
