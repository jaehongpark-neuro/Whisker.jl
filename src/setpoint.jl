

function coordinate_adjust_plot(x::Vector{T},y::Vector{T},w::Int64=640,h::Int64=480) where T
    x_new = -x .+ w
    y_new = -y .+ h
    point = update_points(x_new,y_new)
end