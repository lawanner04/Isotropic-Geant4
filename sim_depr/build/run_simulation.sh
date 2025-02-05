

SIM_FILE="../sim.cc"

for GlobalID in {0..26}; do
    echo "Updating GlobalID to $GlobalID in $SIM_FILE"

    sed -i "s/GlobalID = [0-9]\+/GlobalID = $GlobalID/" "$SIM_FILE"

    echo "Building the project..."
    cmake ..
    make

    echo "Running simulation for GlobalID = $GlobalID..."
    ./sim 

    echo "Finished simulation for GlobalID = $GlobalID."
done

echo "All simulations completed."
