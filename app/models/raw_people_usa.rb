class RawPeopleUsa
  include Mongoid::Document
  field:uuid,type:String
  field:permalink,type:String
  field:data,type:Object
  def self.SaveRaw(permalink,result)
    data={
        "uuid"=>result["data"]["uuid"],
        "permalink"=>Organization.permalink(permalink),
        "data"=>result["data"]
      }
    self.create(data);
  end
end
