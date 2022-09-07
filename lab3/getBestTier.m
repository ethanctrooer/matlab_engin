function [best_tier] = getBestTier(usage)
% lab 3-5

price_plan1 = sum(usage * 1.25)

plan2 = zeros(24, 1)
plan2(1:8) = 0.5
plan2(9:17) = 2
plan2(18:24) = 0.5

price_plan2 = sum(plan2 .* usage, "all")

plan3 = zeros(24, 1)
plan3(1:4) = 0.25
plan3(5:7) = 0.75
plan3(8:19) = 1.25
plan3(20:22) = 0.75
plan3(23:24) = 0.25

price_plan3 = sum(plan3 .* usage, "all")

if price_plan1 <= price_plan2
    best_tier = 1
elseif price_plan2 <= price_plan3
    best_tier = 2
else
    best_tier = 3


end