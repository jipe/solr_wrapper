require 'solr_wrapper/version'
require 'solr_wrapper/instance'

module SolrWrapper
  def self.default_solr_version
    '5.3.1'
  end

  def self.default_instance(options = {})
    @default_instance ||= SolrWrapper::Instance.new options
  end

  ##
  # Ensures a Solr service is running before executing the block
  def self.wrap(options = {}, &block)
    default_instance(options).wrap &block
  end
end
