class AdminController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "kotkotkot232323"
  layout 'admin'
end