Eigen::Matrix<double,4,4> TransMatrixMDH(double a, double alpha, double d, 
double theta) {
Eigen::Matrix<double,4,4> T;
T.row(0)<<cos(theta),-sin(theta), 0, a;
T.row(1)<<sin(theta)*cos(alpha),cos(theta)*cos(alpha),-sin(alpha),-sin(alpha)*d;
T.row(2)<<sin(theta)*sin(alpha),cos(theta)*sin(alpha),cos(alpha),cos(alpha)*d;
T.row(3)<<0,0,0,1;
return T;
}

Eigen::Matrix<double,4,4> ForwardKinematics(double theta1,double theta2,double 
theta3,double theta4,double theta5,double theta6){
Eigen::Matrix<double,4,4> T1, T2, T3, T4, T5, T6;
Eigen::Matrix<double,4,4> T = Eigen::Matrix<double,4,4>::Identity();
T1=TransMatrixMDH(a0,alpha0,d1,theta1);
T2=TransMatrixMDH(a1,alpha1,d2,theta2);
T3=TransMatrixMDH(a2,alpha2,d3,theta3);
T4=TransMatrixMDH(a3,alpha3,d4,theta4);
T5=TransMatrixMDH(a4,alpha4,d5,theta5);
T6=TransMatrixMDH(a5,alpha5,d6,theta6);
T=T6; T=T5*T; T=T4*T; T=T3*T; T=T2*T; T=T1*T;
return T;
}
