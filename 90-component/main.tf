module "roboshop"{
    for_each=var.components
    source = "git::https://github.com/SomeshwarSangaraju/terraform-roboshop-component.git"
    component=each.key
    rule_priority = each.value.rule_priority
}