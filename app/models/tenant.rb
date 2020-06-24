class Tenant < ApplicationRecord

  after_commit :create_schema, on: :create
  after_commit :drop_schema, on: :destroy

  private

  def drop_schema
    Apartment::Tenant.drop tenant_name
  end

  def create_schema
    Apartment::Tenant.create tenant_name
  end
end
