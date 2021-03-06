# Extract benchmark 
echo "Extracting raw benchmark from tar..."
tar xzf ./benchmark/UTAnLay.tar.gz -C ./benchmark/ --strip 1
rm ./benchmark/*.sp

# Extract dataset to ./data
echo "Begin feature image extraction."
rm ./data/data.hdf5
python extract_feature.py

# Embed coordinate channels
python prepare_dataset.py
