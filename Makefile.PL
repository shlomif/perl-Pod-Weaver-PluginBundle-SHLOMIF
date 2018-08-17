use strict;
use warnings;

use 5.008001;

use ExtUtils::MakeMaker 6.17;

my %WriteMakefileArgs = (
  "ABSTRACT" => "SHLOMIF's default Pod::Weaver config",
  "AUTHOR" => "Shlomi Fish <shlomif\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.17"
  },
  "DISTNAME" => "Pod-Weaver-PluginBundle-SHLOMIF",
  "LICENSE" => "apache",
  "MIN_PERL_VERSION" => "5.008001",
  "NAME" => "Pod::Weaver::PluginBundle::SHLOMIF",
  "PREREQ_PM" => {
    "Pod::Elemental::PerlMunger" => "0.200001",
    "Pod::Elemental::Transformer::List" => "0.102000",
    "Pod::Weaver" => 4,
    "Pod::Weaver::Config::Assembler" => 0,
    "Pod::Weaver::Plugin::WikiDoc" => 0,
    "Pod::Weaver::Section::Contributors" => "0.008",
    "Pod::Weaver::Section::Support" => "1.001",
    "Pod::Wordlist" => "1.10",
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "File::Spec" => 0,
    "File::pushd" => 0,
    "Path::Tiny" => 0,
    "Test::DZil" => 0,
    "Test::More" => "0.96"
  },
  "VERSION" => "0.0010000",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "File::pushd" => 0,
  "Path::Tiny" => 0,
  "Pod::Elemental::PerlMunger" => "0.200001",
  "Pod::Elemental::Transformer::List" => "0.102000",
  "Pod::Weaver" => 4,
  "Pod::Weaver::Config::Assembler" => 0,
  "Pod::Weaver::Plugin::WikiDoc" => 0,
  "Pod::Weaver::Section::Contributors" => "0.008",
  "Pod::Weaver::Section::Support" => "1.001",
  "Pod::Wordlist" => "1.10",
  "Test::DZil" => 0,
  "Test::More" => "0.96",
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
