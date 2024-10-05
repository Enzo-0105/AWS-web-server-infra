import "tfplan"

# Main rule definition
main = rule {
    all tfplan.resource_changes as resource {
        resource.type == "aws_instance" && resource.change.after.instance_type == "t2.micro"
    }
}
