class UploadToKeen
  include PTT.metrics.defaults

  def perform(attrs)
    event_type = attrs.delete('event_type')
    Keen.publish(event_type, attrs) if AppEnv[:keen_project_id].to_s.present?
  end
end
