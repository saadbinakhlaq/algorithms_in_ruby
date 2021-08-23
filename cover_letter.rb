def cover_letter(company_name, links = false)
  text = <<-CL
I follow this resource, in charting out my career path and I believe it to be an invaluable read for anyone who is in tech field. Some of the highlights of this article I would like to point out and I believe that would give you my motivation why I would like to join company_name and how I could make a positive impact as a member of the technical team.
I believe my past experience and skill sets would be an appropriate addition to your technical team.

As a ruby developer working for Sephora for more than two years I have had experience in handling important features. Some of them I would like list here are.
1. sephora.sg/carts page, functionality for sticky cart, and also samples UI, adding of samples from cart page.
2. sephora.sg/quick_view for the whole site.
3. Revamp of sephora.sg/orders/new, :edit, /show, order/complete, order failed.
4. visa checkout wallet.
5. API for mobile apps
6. Integrating and automating load test
7. Handling the launch of our webapp for Australia and New Zealand market, which involved revamping of the UI of the whole application.

Some of the highlights of the above article that I have shared, which makes me want to start my career at company_name.

1. “Don’t plan your career… instead focus on developing skills and pursuing opportunities”
    I believe working at company_name would be a valuable addition to my experience, because of industry and the size of the company
2. “Seek to be a double / triple / quadruple threat”…
    i.e. instead of worrying about being absolutely the greatest at one thing, try to be really good at 2 or more things, the combination can make you invaluable
3. “Pick an industry where the founders of the industry, the founders of the important companies in the industry, are still alive and actively involved”
CL

  text.gsub!('company_name', company_name)
  text.gsub!('resource', "resource[http://pmarchive.com/guide_to_career_planning_part0.html]") unless links.nil?
  puts text
end

cover_letter(ARGV[0], ARGV[1])
