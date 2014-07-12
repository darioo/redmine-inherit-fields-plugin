Redmine::Plugin.register :redmine_subtasks_inherited_fields do
  name 'Redmine Subtasks Inherited Fields plugin'
  author 'Edosoft Factory modified by Dariusz Kowalski'
  description 'This is a plugin for Redmine to allow choosing which fields are inherited when you create a subtask'
  version '0.0.2'
  url "https://github.com/darioo/redmine-inherit-fields-plugin" if respond_to?(:url)
  author_url 'mailto:david.verdu@edosoftfactory.com'
  
  requires_redmine :version_or_higher => '2.0.0'  

  settings :default => {
    :inherit_fixed_version_id => true,
    :inherit_is_private => true,
    :inherit_assigned_to_id => false,
    :inherit_status_id => false,
    :inherit_priority_id => false,
    :inherit_start_date => false,
    :inherit_due_date => false,
    :inherit_tracker_id => true,
    :default_trackers_id => {}
  }, :partial => 'subtasks_inherited_fields/subtasks_inherited_fields'

end

require 'issues_helper_patch'
