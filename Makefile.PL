#!/usr/bin/env perl

# Creation date: 2003-04-06 13:26:22
# Authors: Don
# Change log:
# $Id: Makefile.PL,v 1.3 2003/04/13 20:47:17 don Exp $

use strict;
use Carp;

# main
{
    local($SIG{__DIE__}) = sub { &Carp::cluck(); exit 0 };

    use ExtUtils::MakeMaker;

    WriteMakefile(
                  NAME => 'File::Rotate::Backup',
                  DISTNAME => 'File-Rotate-Backup',
                  VERSION_FROM => 'Backup.pm',
                  ABSTRACT => 'Performs system backups and rotates them',
                  AUTHOR => 'DON OWENS <don@owensnet.com>',
                  PM => { 'Backup.pm' => '$(INST_LIBDIR)/Backup.pm',
                          'Backup/Copy.pm' => '$(INST_LIBDIR)/Backup/Copy.pm',
                        },
                  dist => { COMPRESS => 'gzip -9f', SUFFIX => 'gz' },
                  DIR => [],
                  EXE_FILES => [],
                  );

}

exit 0;

###############################################################################
# Subroutines

