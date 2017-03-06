class InstitutionsController < ApplicationController
  def index
    @institutions = Atrium::Institution.list
  end
end
