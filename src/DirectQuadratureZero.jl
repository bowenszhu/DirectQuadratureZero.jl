module DirectQuadratureZero

@variables t, A(t)

# standard A(t) = [sin(t),cos(t), sin(t+π/4)]

function dq0(A(t)::AbstractArray,ω::Float64)
    # A is an array of 3 functions wrt time in abc frame, ω is angular speed
    return (2/3) * [
        cos(ω*t)    cos(ω*t - 2π/3)     cos(ω*t + 2π/3)
        -sin(ω*t)   -sin(ω*t - 2π/3)    -sin(ω*t + 2π/3)
        1/2         1/2                 1/2
    ] * A(t)
end

end
