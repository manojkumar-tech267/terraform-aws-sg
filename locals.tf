locals {
    common_tags = {
        Project     = var.project
        Environment = var.environment
        Terraform = true
    }
    sg_final_tags = merge(
    var.sg_tags,
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}-${var.sg_name}"
    }
    )
}