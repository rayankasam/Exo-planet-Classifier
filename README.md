# Exoplanet Detection

This project utilizes NASA's Kepler telescope data to detect exoplanets using machine learning techniques. By analyzing light intensity (flux) data, the model identifies periodic fluctuations indicating the presence of exoplanets orbiting distant stars.

## Features
- **High Accuracy**: Achieved 98.7% accuracy in detecting exoplanets.
- **Data Preprocessing**: Includes normalization, Gaussian filtering, and oversampling to improve data quality and model performance.
- **Custom Neural Network**: Designed a convolutional neural network (CNN) for efficient pattern recognition in time-series data.

## Methodology

### 1. Transit Photometry
Exoplanets are detected when they pass in front of their host star, causing a periodic dip in the star's brightness. This method provides a reliable approach to identify exoplanet candidates.

### 2. Dataset
The dataset contains:
- Light intensity values (flux) recorded over time for stars.
- Labels indicating whether a star hosts exoplanets (1 for no exoplanet, 2 for exoplanet).

Challenges:
- Significant class imbalance (only 0.75% of stars host exoplanets).

### 3. Data Preprocessing
- **Normalization**: Stabilized learning by normalizing input features.
- **Gaussian Filtering**: Smoothed flux data to reduce noise.
- **Oversampling**: Balanced class distribution using synthetic data generation with a 2:1 ratio for non-exoplanet to exoplanet samples.

## Model Design

A custom convolutional neural network (CNN) was implemented using TensorFlow:
1. **Convolutional Layers**: Extracted patterns from time-series data.
2. **Pooling Layers**: Reduced dimensionality while retaining key features.
3. **Batch Normalization**: Improved convergence and generalization.
4. **Fully Connected Layers**: Predicted the probability of a star hosting an exoplanet.

## Training
- **Loss Function**: Binary cross-entropy for classification tasks.
- **Optimizer**: Adam optimizer with a learning rate of 0.01.
- **Epochs**: Trained for 5 epochs with a batch size of 10.

## Results
- **Accuracy**: The model achieved 98.7% accuracy on the test dataset.
- **Precision**: Balanced performance across both classes, as shown in the confusion matrix.

## Limitations
- **Data Dependency**: Requires flux data in a specific format (3197 time steps per star).
- **Synthetic Data**: Reliance on generated data to address class imbalance may limit real-world applicability.

## How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/Exo-planet-Classifier.git
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Run the Jupyter Notebook:
   ```bash
   jupyter notebook final.ipynb
   ```

## References
- [NASA Exoplanet Archive](https://exoplanetarchive.ipac.caltech.edu)
- [Transit Photometry Research](https://arxiv.org/abs/1803.07867)

---
