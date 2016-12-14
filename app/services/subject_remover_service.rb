class SubjectRemoverService

  def remove_subject(user, subject)
    user.remove_subject subject
    subject.destroy! if subject.users.empty?
  end

end