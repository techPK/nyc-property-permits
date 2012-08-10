class NycGovExcelWebfile < ActiveRecord::Base
  # attr_accessible :title, :body
end

class PermitExcelWebfile < NycGovExcelWebfile
  # STI
end

class JobExcelWebfile < NycGovExcelWebfile
  # STI
end

class SignExcelWebfile < NycGovExcelWebfile
  # STI
end

class AntennaExcelWebfile < NycGovExcelWebfile
  # STI
end
