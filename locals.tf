locals {

  tags    = merge(var.tags, { tf-module-name = "alb" }, { env = var.env })
  lb_name = var.internal ? "${var.env}-private-alb" : "${var.env}-public-alb"
  sg_name = var.internal ? "${var.env}-private-alb-sg" : "${var.env}-public-alb-sg" # No Need Of This.
}