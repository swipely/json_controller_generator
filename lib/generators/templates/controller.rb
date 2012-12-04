# Copyright Swipely, Inc.  All rights reserved.

<% module_namespacing do -%>
class <%= class_name %>Controller < ApplicationController

<% for action in actions -%>
  def <%= action %>
    render json: {}
  end

<% end -%>
end
<% end -%>
