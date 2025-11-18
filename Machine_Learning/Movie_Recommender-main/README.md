🎬 Movie Recommendation System

📌 Project Overview

Recommendation systems are widely used in the entertainment and e-commerce industries to help users discover relevant items among millions of options. Platforms like Netflix, YouTube, and Amazon rely heavily on recommendation engines to personalize user experience and boost engagement.

In this project, I built a Collaborative Filtering based Movie Recommendation System using the MovieLens dataset. The system predicts ratings for movies that a user hasn’t seen yet and recommends the most suitable ones.

🎯 Business Objectives

Build a Collaborative Filtering Movie Recommendation System.

Predict the rating a user might give to an unseen movie.

Minimize the difference between predicted and actual ratings using RMSE and MAPE.

📊 Dataset

Source: MovieLens 20M Dataset

Description:

20M+ ratings, 465k+ tag applications, 27k+ movies, 138k+ users.

Collected between 1995 – 2015.

Each user has rated at least 20 movies.

Files Used:

ratings.csv – user-movie ratings

movies.csv – movie metadata

🛠️ Methodology

Data Loading & Exploration – Read and analyze user ratings & movie data.

User-Item Matrix – Build interaction matrices.

Similarity Measures – Compute User-User and Movie-Movie similarity.

Collaborative Filtering – Recommend movies based on similarity.

Machine Learning Models – Train models to predict unseen ratings.

Evaluation – Measure accuracy using RMSE and MAPE.

📈 Results

✅ Movie-Movie Similarity based recommendations:


✅ User-User Similarity based recommendations:


✅ Feature Importance for predicting ratings:


✅ ML Model comparison:


✅ Example of Collaborative Filtering recommendations:


📝 Conclusions

Learned the importance and impact of recommendation systems in real-world applications.

Implemented User-User and Movie-Movie similarity approaches.

Applied Collaborative Filtering and Matrix Factorization techniques.

Evaluated system performance with RMSE and MAPE.

Demonstrated how these techniques can be extended to any user-item interaction system (e.g., e-commerce, music streaming, etc.).

👉 Future improvements could include experimenting with Deep Learning models (e.g., Neural Collaborative Filtering, Autoencoders, Transformers) for better personalization.

✨ Developed with ❤️ by Muhammad Adnan