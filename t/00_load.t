#!/usr/bin/perl

use strict;
use vars qw(@MODULES);

use Test::More;

# $Id: 00_load.t 13 2006-09-14 08:58:33Z  $
# Verify that the individual modules will load

BEGIN
{
    @MODULES = qw(WebService::ISBNDB::API
                  WebService::ISBNDB::API::Authors
                  WebService::ISBNDB::API::Books
                  WebService::ISBNDB::API::Categories
                  WebService::ISBNDB::API::Publishers
                  WebService::ISBNDB::API::Subjects
                  WebService::ISBNDB::Agent
                  WebService::ISBNDB::Agent::REST);

    plan tests => scalar(@MODULES);
}

for (@MODULES)
{
    use_ok $_;
}

exit 0;
