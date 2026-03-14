
SELECT
    risk_band,
    COUNT(*) AS applicant_count
FROM loan_scoring_results
GROUP BY risk_band
ORDER BY applicant_count DESC;

SELECT
    decision,
    COUNT(*) AS total_cases,
    ROUND(AVG(risk_score), 2) AS avg_risk_score
FROM loan_scoring_results
GROUP BY decision
ORDER BY avg_risk_score DESC;

SELECT
    risk_band,
    COUNT(*) AS applicants,
    ROUND(AVG(actual_default), 4) AS actual_default_rate
FROM loan_scoring_results
GROUP BY risk_band
ORDER BY actual_default_rate DESC;

SELECT
    loan_amnt,
    int_rate,
    annual_inc,
    dti,
    risk_score,
    risk_band,
    decision
FROM loan_scoring_results
WHERE risk_band = 'High Risk'
LIMIT 20;

SELECT
    decision,
    COUNT(*) AS total
FROM loan_scoring_results
GROUP BY decision
ORDER BY total DESC;
