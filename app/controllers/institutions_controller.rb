class InstitutionsController < ApplicationController
  def index
    @institutions = Atrium::Institution.list(limit: 25)
  end
end
