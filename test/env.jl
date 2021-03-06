using Augur
using DataFrames
using Dates
using Debug

datafile = "data/sim_2015-04-01T23:09:45.jld"

if ~isinteractive() && length(ARGS) > 0
    datafile = ARGS[1]
end

sim_data = load_data(datafile)
sim = sim_data["sim"]
trajectories = sim_data["trajectories"]

if ~isinteractive()
    plot_simulations(sim_data)
end
