module PagesHelper
    def tweet_parser tweet
            regex = %r{
            \b
            (
                (?: [a-z][\w-]+:
                (?: /{1,3} | [a-z0-9%] ) |
                www\d{0,3}[.] |
                [a-z0-9.\-]+[.][a-z]{2,4}/
                )
                (?:
                [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
                )+
                (?:
                \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
                [^\s`!()\[\]{};:'".,<>?«»“”‘’]
                )
            )
            }ix

        tweet.gsub(regex) do |url|
           "<a href=#{url} target='_blank'>#{url}</a>"
        end.html_safe
    end
end


"jazzfanz: Hard work in offseason paying off for Utah Jazz's Ricky Rubio <a href='https://t.co/fySmS49Khg'>https://t.co/fySmS49Khg</a> #UtahJazz"