# DateRangeSolrQuery

Given a start date, end date, and solr field this gem will return a string that can be sent to Solr as a range query.

## Installation

Add this line to your application's Gemfile:

    gem 'date_range_solr_query'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install date_range_solr_query

## Usage

There are 3 options accepted on initialization: start_date, end_date, and field.

You can pass dates in the format of YYYY, YYYY-MM, or YYYY-MM-DD as the start_date and/or end_date and get the correctly formatted date range query.  Below you will find various examples.

### Start Dates Only

    DateRangeSolrQuery.new(:start_date => "2013").range_query
    => "[2013-01-01T00:00:00Z TO 2013-12-31T23:59:59Z]"

    DateRangeSolrQuery.new(:start_date => "2013-01").range_query
    => "[2013-01-01T00:00:00Z TO 2013-01-31T23:59:59Z]"

    DateRangeSolrQuery.new(:start_date => "2013-03-21").range_query
    => "[2013-03-21T00:00:00Z TO 2013-03-21T23:59:59Z]"
    
    
### Start and End Dates

    DateRangeSolrQuery.new(:start_date => "2013", :end_date => "2014").range_query
    => "[2013-01-01T00:00:00Z TO 2014-12-31T23:59:59Z]"

    DateRangeSolrQuery.new(:start_date => "2013-01", :end_date => "2013-03").range_query
    => "[2013-01-01T00:00:00Z TO 2013-03-31T23:59:59Z]"

    DateRangeSolrQuery.new(:start_date => "2013-03-21", :end_date => "2013-05-12").range_query
    => "[2013-03-21T00:00:00Z TO 2013-05-12T23:59:59Z]"


### Mixed Formats

    DateRangeSolrQuery.new(:start_date => "2013-01", :end_date => "2013-03-12").range_query
    => "[2013-01-01T00:00:00Z TO 2013-03-12T23:59:59Z]"
    
### Field Option

    DateRangeSolrQuery.new(:start_date => "2013", :field => "search_date").range_query
    => "search_date:[2013-01-01T00:00:00Z TO 2013-12-31T23:59:59Z]"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
