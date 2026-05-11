-- Fact Table

USE HR_MANAGEMENT_SYSTEM;

CREATE TABLE IF NOT EXISTS Fact_Performance (
    PerformanceID VARCHAR(20) PRIMARY KEY,
    EmployeeID VARCHAR(20),
    ReviewDate VARCHAR(20),
    EnvironmentSatisfaction INT,
    JobSatisfaction INT,
    RelationshipSatisfaction INT,
    TrainingOpportunitiesWithinYear INT,
    TrainingOpportunitiesTaken INT,
    WorkLifeBalance INT,
    SelfRating INT,
    ManagerRating INT,
    FOREIGN KEY (EmployeeID) REFERENCES DimEmployee(EmployeeID),
    FOREIGN KEY (EnvironmentSatisfaction) REFERENCES DimSatisfactionLevel(SatisfactionID),
    FOREIGN KEY (JobSatisfaction) REFERENCES DimSatisfactionLevel(SatisfactionID),
    FOREIGN KEY (RelationshipSatisfaction) REFERENCES DimSatisfactionLevel(SatisfactionID),
    FOREIGN KEY (WorkLifeBalance) REFERENCES DimSatisfactionLevel(SatisfactionID),
    FOREIGN KEY (SelfRating) REFERENCES DimRatingLevel(RatingID),
    FOREIGN KEY (ManagerRating) REFERENCES DimRatingLevel(RatingID)
);
