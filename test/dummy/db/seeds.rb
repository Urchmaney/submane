plan_a = Submane::Plan.find_or_create_by(
    name: "Basic",
    price: 60,
    visual_order: 1
)

Submane::Plan.find_or_create_by(
    name: "Standard",
    price: 120,
    visual_order: 2
)

Submane::Plan.find_or_create_by(
    name: "Enterprise",
    price: 180,
    visual_order: 3
)

u = User.find_or_create_by(
    name: "Micheal Knownles",
    description: ""
)

p plan_a
Submane::Subscription.create!(
    submane_plan: plan_a,
    user: u,
    end_date: Time.now + 2.months
)