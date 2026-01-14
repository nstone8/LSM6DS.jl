module LSM6DS

using PyCall

export IMU, acceleration, gyro

"""
```julia
IMU(i2c)
```
Connect to a LSM6DSOX accelerometer via Blinka. `i2c` should be a CircuitPython object
representing the i2c channel to communicate on.
"""
struct IMU
    sensor #underlying python object
    function IMU(i2c)
        adafruit_lsm6ds = pyimport("adafruit_lsm6ds")
        new(adafruit_lsm6ds.LSM6DSOX(i2c))
    end
end

"""
```julia
acceleration(imu)
```
Read the x, y, and z accelerations from an `IMU` in ``m/s^2``
"""
acceleration(imu) = imu.acceleration

"""
```julia
gyro(imu)
```
Read the x, y, and z angular velocities from an `IMU` in ``radians/s``
"""
acceleration(imu) = imu.acceleration

end # module LSM6DS
