# Bunsan Bookstore has offices in Texas (TX) and North Carolina (NC),
# so we have to charge sales tax on orders shipped to these states.
# The rates can be expressed as a map

# tax_rates = %{NC: 0.075, TX: 0.08}

# Here’s a list of orders:
# orders = [
#   %{ id: 123, ship_to: :NC, net_amount: 100.00 },
#   %{ id: 124, ship_to: :OK, net_amount:  35.50 },
#   %{ id: 125, ship_to: :TX, net_amount:  24.00 },
#   %{ id: 126, ship_to: :TX, net_amount:  44.80 },
#   %{ id: 127, ship_to: :NC, net_amount:  25.00 },
#   %{ id: 128, ship_to: :MA, net_amount:  10.00 },
#   %{ id: 129, ship_to: :CA, net_amount: 102.00 },
#   %{ id: 120, ship_to: :NC, net_amount:  50.00 }
# ]

# Write a module with a function that takes both tax_rates and orders and returns a copy of the orders,
# but with an extra field, total_amount which is the net plus sales tax.
# If a shipment is not to NC or TX, there’s no tax applied.

defmodule HomeWork2 do
  def calculate_tax_orders(orders, %{NC: 0.075, TX: 0.08} = tax_rates) do
    orders
    |> Enum.map(fn order -> calculate_total_amount(order, tax_rates) end)
  end

  defp calculate_total_amount(order, tax_rates) do
    case Map.fetch(order, :ship_to) do
      {:ok, :NC} -> add_total_amount_field({order, Map.get(tax_rates, :NC)})
      {:ok, :TX} -> add_total_amount_field({order, Map.get(tax_rates, :TX)})
      _ -> add_total_amount_field(order)
    end
  end

  defp add_total_amount_field({order, tax}) do
    order
    |> Map.put(:total_amount, calculate_tax(order.net_amount, tax))
  end

  defp add_total_amount_field(order) do
    order
    |> Map.put(:total_amount, order.net_amount)
  end

  defp calculate_tax(value, tax) do
    value * tax + value
  end
end
