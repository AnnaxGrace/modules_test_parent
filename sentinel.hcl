mock "tfplan/v2" {
  module {
    source = "created-tfplan.sentinel"
  }
}

policy "foo" {
  source = "git::https://github.com/AnnaxGrace/modules_test_child.git//sentinel_policies/naming_convention.sentinel?ref=skeleton-setup"
  params = {
    "rg_regex"  = "rg-(dev|qa|uat|prd)-(cus|eus2)-[a-z]+-[a-z]+-\\d{3}$",
    "agw_regex" = "agw-(dev|qa|uat|prd)-(cus|eus2)-[a-z]+-\\d{3}$"
  }
}