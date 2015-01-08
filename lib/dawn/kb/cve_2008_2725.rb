module Dawn
		module Kb
			# Automatically created with rake on 2014-01-09
			class CVE_2008_2725
				include RubyVersionCheck

				def initialize
          message = "Integer overflow in the (1) rb_ary_splice function in Ruby 1.8.4 and earlier, 1.8.5 before 1.8.5-p231, 1.8.6 before 1.8.6-p230, and 1.8.7 before 1.8.7-p22; and (2) the rb_ary_replace function in 1.6.x allows context-dependent attackers to trigger memory corruption via unspecified vectors, aka the \"REALLOC_N\" variant, a different issue than CVE-2008-2662, CVE-2008-2663, and CVE-2008-2664. NOTE: as of 20080624, there has been inconsistent usage of multiple CVE identifiers related to Ruby. The CVE description should be regarded as authoritative, although it is likely to change."
          super({
            :name=>"CVE-2008-2725",
            :cvss=>"AV:N/AC:L/Au:N/C:N/I:N/A:C",
            :release_date => Date.new(2008, 6, 24),
            :cwe=>"189",
            :owasp=>"A9", 
            :applies=>["rails", "sinatra", "padrino"],
            :kind=>Dawn::KnowledgeBase::RUBY_VERSION_CHECK,
            :message=>message,
            :mitigation=>"Upgrade your ruby interpreter",
            :aux_links=>["http://www.ruby-lang.org/en/news/2008/06/20/arbitrary-code-execution-vulnerabilities/"]
          })

          self.safe_rubies = [
            {:engine=>"ruby", :version=>"1.9.0", :patchlevel=>"p2"}, 
            {:engine=>"ruby", :version=>"1.8.7", :patchlevel=>"p22"}, 
            {:engine=>"ruby", :version=>"1.8.6", :patchlevel=>"p230"}, 
            {:engine=>"ruby", :version=>"1.8.5", :patchlevel=>"p231"}
          ]
				end
			end
		end
