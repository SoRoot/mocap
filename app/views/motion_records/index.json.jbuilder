json.array!(@motion_records) do |motion_record|
  json.extract! motion_record, :id, :actor, :c3d_path, :bvh_path, :uploader_id
  json.url motion_record_url(motion_record, format: :json)
end
