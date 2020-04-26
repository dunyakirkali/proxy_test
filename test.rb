require 'proxy_list'

manager = ProxyList::Manager.new

# Fetch list of proxies
manager.fetch

# Cleanup the proxy list
manager.validate

require 'mechanize'
url = 'http://www.google.com'

agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'
agent.set_proxy(manager.proy)
@page = agent.get(:url => url)

