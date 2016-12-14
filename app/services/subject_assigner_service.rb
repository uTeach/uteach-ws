class SubjectAssignerService

  def assign_subject user, subject_name
    subject = Subject.find_or_create_by! name: subject_name
    user.add_subject subject
    subject
  end

end