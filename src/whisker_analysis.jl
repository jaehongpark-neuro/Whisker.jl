using WhiskerTracking_HG,BenchmarkTools

@time myhandles=make_gui();
@time WhiskerTracking_HG.add_callbacks(myhandles.b,myhandles)


# threshold for line detection
WhiskerTracking_HG.change_JT_param(:paramMIN_SIGNAL,17.50f0)



# this is the selected whiskers by adding frames
myhandles.woi
myhandles.woi_r

myhandles.wt.whiskers
# these are the whiskers detected by Janelia tracker
myhandles.wt.whiskers[1].x
myhandles.wt.whiskers[1].y

myhandles.wt.whiskers[1].thick
myhandles.wt.whiskers[1].scores

# all candidate whiskers will be averaged into one single pseudo whisker to calculate setpoints

# 1. frame read
# 2. WT_trace function
# 3. average
# 3.1 displayed in the gui
# 4. calculate

# for i in 1:length(frames)
#  frame_read()
#  WT_trace
#  average()
#  calculate()
# end

# to plot lines in the image, x = - a + 640
#                             y = - b + 480

using GLMakie
include("c:\\Users\\hongs\\Desktop\\VScode_Julia\\USV.jl\\usv_temp.jl")
include("c:\\Users\\hongs\\Desktop\\VScode_Julia\\Whisker.jl\\src\\setpoint.jl")

fig = Figure()

ax = Axis(fig[1,1])

image!(ax,reverse(rotr90(myhandles.current_frame),dims=1))

draw_raw_all_whiskers!(ax,myhandles)