

function coordinate_adjust_plot(x::Vector{T},y::Vector{T},w::Int64=640,h::Int64=480) where T
    x_new = -x .+ w
    y_new = -y .+ h
    point = update_points(x_new,y_new)
end

function draw_raw_all_whiskers!(ax::Axis,th::WhiskerTracking_HG.Tracker_Handles)
    for i in 1:length(th.wt.whiskers)
        point = coordinate_adjust_plot(th.wt.whiskers[i].x,th.wt.whiskers[i].y)
        lines!(ax,point,color=:cyan,linewidth=3)
    end
    nothing
end