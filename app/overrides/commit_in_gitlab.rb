# frozen_string_literal: true

module CommitInGitlab
  Deface::Override.new virtual_path: 'issues/tabs/_changesets',
                       name: 'show-revision-in-gitlab',
                       insert_after: 'erb[loud]:contains("revision")',
                       original: '8517551ea080196491724e180de939f340061640',
                       text: '<%= call_hook(:view_repositories_show_revision_gl, changeset: changeset) %>'
end
