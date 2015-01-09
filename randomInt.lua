local mod = math.fmod
local floor = math.floor
local abs = math.abs

local B =  4000000

function srandom( seedobj, fVal1, fVal2 )
    --[[--
    Creates pseudo-random integer values.

    @Parameter: seedobj
        contains "{ seed = -265789120 }" formatted signed integer value

    @Parameter: fVal1
        

    @Parameter: fVal2

    @Return: temp_rand
        pseudo-random integer value.

    --]]--
    local ma = seedobj.ma
    local seed = seedobj.seed
    local mj, mk
    if seed < 0 or not ma then
        ma = {}
        seedobj.ma = ma
        mj = abs( 1618033 - abs( seed ) )
        mj = mod( mj, B )
        ma[55] = mj
        mk = 1
        for i = 1, 54 do
            local ii = mod( 21 * i,  55 )
            ma[ii] = mk
            mk = mj - mk
            if mk < 0 then mk = mk + B end
            mj = ma[ii]
        end
        for k = 1, 4 do
            for i = 1, 55 do
                ma[i] = ma[i] - ma[ 1 + mod( i + 30,  55) ]
                if ma[i] < 0 then ma[i] = ma[i] + B end
            end
        end
        seedobj.inext = 0
        seedobj.inextp = 31
        seedobj.seed = 1
    end
    local inext = seedobj.inext
    local inextp = seedobj.inextp
    inext = inext + 1
    if inext == 56 then inext = 1 end
    seedobj.inext = inext
    inextp = inextp + 1
    if inextp == 56 then inextp = 1 end
    seedobj.inextp = inextp
    mj = ma[ inext ] - ma[ inextp ]
    if mj < 0 then mj = mj + B end
    ma[ inext ] = mj
    local temp_rand = mj / B
    if fVal2 then
        return floor( fVal1 + 0.5 + temp_rand * ( fVal2 - fVal1 ) )
    elseif fVal1 then
        return floor( temp_rand * fVal1 ) + 1
    else
        return temp_rand
    end
end

--[[--
test
--]]--
local seedobj = { seed = -232343 }
for i = 1, 100 do
    print( srandom( seedobj, 100, 1000 ) )
end