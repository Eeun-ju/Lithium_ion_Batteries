# Lithium_ion_Batteries
신호 분석에 특화된 EMD, EEMD의 효과를 ARIMA를 통해 확인하자 <br>
2016년 ELSEVIER의 기재된 **Lithium-ion batteries remaining useful life prediction based on a mixture of empirical mode decomposition and ARIMA model** 논문 분석과 구현을 진행한다.

<br>
<br>
사용 데이터 : https://ti.arc.nasa.gov/tech/dash/groups/pcoe/prognostic-data-repository/ 5.Battery Data Set<br>
논문 관련 링크 : https://www.sciencedirect.com/science/article/abs/pii/S0026271416303018 <br>
참고 자료 : https://neosla.tistory.com/34 <br>
사용 언어 : Python, R

----------------------------------------------------------------------------
**Lithium-ion 배터리** <br>
양극, 음극, 분리막, 전해질로 구성되어 있는 배터리로 산화/환원 반응을 통해 에너지를 생성한다. 배터리 노화 주요 원인은 양/음극과 전해질 간 화학반응으로 사용 기간, 충/방전 전류, 온도, 과충전/과방전 등이 노화에 영향을 준다. <br>

**SOH&SOC**<br>
SOC : State Of Charge (배터리 충전 상태)<br>
SOH : State Of Health (배터리 노화 상태)<br>
SOC는 Coulomb Counting(전류 적분) 또는 SOC-OCV(개방전압)으로 측정하고, SOH는 Capacity Method로 계산된다.<br>

**Data**<br>
CC-CV Charge(충전), CC DisCharge(방전) 시킨 데이터로 방전 전류와 방전 전압을 다르게 설정한 배터리들의 관측 데이터 <br>
1.5A로 고정된 전류로 전압이 4.2V로 증가할 때까지 충전, 4.2V로 고정된 전압으로 전류가 20mA로 감소할 때까지 충전/ 2A로 고정된 전류로 전압이 일정값으로 감소할 때까지 방전한다. <br>


EMD? (Empirical Mode Decomposition)<br>
EMD는 시계열 신호를 분석하기 위한 것으로, 파라미터 값을 정의하지 않고, 원 신호에 기반하여 분해되는 방법이다. **n개의 IMF(Intrinsic Mode Functions)들과 residue로 분해된다.**
