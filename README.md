# Lithium_ion_Batteries
신호 분석에 특화된 EMD, EEMD의 효과를 ARIMA를 통해 확인하자 <br>
2016년 ELSEVIER의 기재된 **Lithium-ion batteries remaining useful life prediction based on a mixture of empirical mode decomposition and ARIMA model** 논문 분석과 구현을 진행한다. 
<br>
<br>
사용 데이터 : https://ti.arc.nasa.gov/tech/dash/groups/pcoe/prognostic-data-repository/ 5.Battery Data Set<br>
논문 관련 링크 : https://www.sciencedirect.com/science/article/abs/pii/S0026271416303018

----------------------------------------------------------------------------
EMD? (Empirical Mode Decomposition)<br>
EMD는 시계열 신호를 분석하기 위한 것으로, 파라미터 값을 정의하지 않고, 원 신호에 기반하여 분해되는 방법이다. **n개의 IMF(Intrinsic Mode Functions)들과 residue로 분해된다.**
