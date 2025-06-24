local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.qrisp', 'eclipse-qrisp') {
  settings+: {
    blog: "https://projects.eclipse.org/projects/technology.qrisp",
    description: "Qrisp is a high-level programming language for working with quantum computers.",
    name: "Eclipse Qrisp project",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('Qrisp') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Qrisp - The next generation of quantum algorithm development",
      homepage: "https://www.qrisp.eu",
      topics+: [
        "quantum-algorithms",
        "quantum-chemistry",
        "quantum-computing",
        "quantum-programming-language"
      ],
      web_commit_signoff_required: false,
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}