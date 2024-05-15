// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app3/components/height_weight_changer.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../colors/color_set.dart';
import '../components/appbar.dart';
import '../components/feature.dart';
import '../components/sidebar.dart';
import '../components/tip_ball.dart';
import '../components/water_intake.dart';
import '../models/tip_ball.dart';
import '../styles/box_shadow.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Sidebar(),
        backgroundColor: htaPrimaryColors.shade100,
        body: SafeArea(
          child: Column(
            children: [
              // Phần không cuộn
              const Padding(
                padding:
                    EdgeInsets.only(top: 25, bottom: 25, right: 15, left: 15),
                child: MyAppBar(username: 'Alice'),
              ),
              // Cuộn cả Column này
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // story hay tip j đấy (horiz scrollable)
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              TipBall(
                                  imageUrl: 'https://photos.google.com/u/1/share/AF1QipNAbgiu0dGgFV6-PtY-HRANd7w3fVaykFiq6J-w7Dsew4SApm5Qene0uJc_mQUPNA/photo/AF1QipN8iFY73SaEL4LykuIilIW5kPkCJTlpbDcY5bfm?key=YUZSWkMzdUI0cUk3YTA4YUs1QnBUQjNhajhCUHRB',
                                  emoji: '🐅',
                                  title: 'Just',
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              TipBall(
                                  imageUrl: 'https://photos.google.com/u/1/share/AF1QipNAbgiu0dGgFV6-PtY-HRANd7w3fVaykFiq6J-w7Dsew4SApm5Qene0uJc_mQUPNA/photo/AF1QipMa26UNcfFQoiuZrl8xUgNODCnK98csa8A4kdo3?key=YUZSWkMzdUI0cUk3YTA4YUs1QnBUQjNhajhCUHRB',
                                  emoji: '🦊',
                                  title: 'Some',
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              TipBall(
                                  imageUrl: 'https://photos.google.com/u/1/share/AF1QipNAbgiu0dGgFV6-PtY-HRANd7w3fVaykFiq6J-w7Dsew4SApm5Qene0uJc_mQUPNA/photo/AF1QipP9hAJjZL9wipy3NuCNv0CApZg2Y3rWJIq0TIzs?key=YUZSWkMzdUI0cUk3YTA4YUs1QnBUQjNhajhCUHRB',
                                  emoji: '🦆',
                                  title: 'Random',
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              TipBall(
                                  imageUrl: 'https://photos.google.com/u/1/share/AF1QipNAbgiu0dGgFV6-PtY-HRANd7w3fVaykFiq6J-w7Dsew4SApm5Qene0uJc_mQUPNA/photo/AF1QipMMrDNs7ch3EvZzGVHKD1uNmYa9G7FG65XlfwM9?key=YUZSWkMzdUI0cUk3YTA4YUs1QnBUQjNhajhCUHRB',
                                  emoji: '🪳',
                                  title: 'Facts',
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              TipBall(
                                  imageUrl: 'https://photos.google.com/u/1/share/AF1QipNAbgiu0dGgFV6-PtY-HRANd7w3fVaykFiq6J-w7Dsew4SApm5Qene0uJc_mQUPNA/photo/AF1QipOP7zs4RFvacHhURlLDRGn13LGPGdyAtZn9VJYi?key=YUZSWkMzdUI0cUk3YTA4YUs1QnBUQjNhajhCUHRB',
                                  emoji: '🦐',
                                  title: 'You',
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              TipBall(
                                  imageUrl: 'https://photos.google.com/u/1/share/AF1QipNAbgiu0dGgFV6-PtY-HRANd7w3fVaykFiq6J-w7Dsew4SApm5Qene0uJc_mQUPNA/photo/AF1QipMYH6fLdc4O14Ga8G-_4QFooPSwIMGLokDbIs_H?key=YUZSWkMzdUI0cUk3YTA4YUs1QnBUQjNhajhCUHRB',
                                  emoji: '🐬',
                                  title: 'Might',
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              TipBall(
                                  imageUrl: 'https://photos.google.com/u/1/share/AF1QipNAbgiu0dGgFV6-PtY-HRANd7w3fVaykFiq6J-w7Dsew4SApm5Qene0uJc_mQUPNA/photo/AF1QipM6mcq4w-jQU33N8LRl9NLuLMaj8Yb7iHPCpNXB?key=YUZSWkMzdUI0cUk3YTA4YUs1QnBUQjNhajhCUHRB',
                                  emoji: '🦏',
                                  title: 'Like',
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      // title Your stats today và channge date (?)
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          'Your stats for today',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      // mấy cái chart (khó làm quá để sau)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          decoration: BoxDecoration(
                            color: htaPrimaryColors.shade50,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [shadow],
                          ),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              // Calories
                              const Text(
                                'Calories',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              // pie charts
                              SizedBox(
                                height: 110, // Đã sửa lại từ 1110
                                child: Row(
                                  children: [
                                    // chỗ này là số kcal đã hấp thụ
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // số
                                          Text(
                                            '2000',
                                            style: TextStyle(
                                              color: htaPrimaryColors.shade500,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                      
                                          // chữ
                                          Text(
                                            'kcal consumed',
                                            style: TextStyle(
                                              color: htaPrimaryColors.shade500,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // chỗ này là cái pie chart remaining kcal
                                    Expanded(
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SizedBox(
                                            height: 110 - 10, // Chiều cao cố định - đi radius
                                            width: 110 - 10,  // Chiều rộng cố định - đi radius
                                            child: PieChart(
                                              PieChartData(
                                                sections: [
                                                  PieChartSectionData(
                                                    color: htaPrimaryColors.shade100,
                                                    value: 2000,
                                                    radius: 10,
                                                    title: '',
                                                  ),
                                                  PieChartSectionData(
                                                    color: htaPrimaryColors.shade500,
                                                    value: 500,
                                                    title: '',
                                                    radius: 10,
                                                  ),
                                                ],
                                                sectionsSpace: 0,
                                                centerSpaceRadius: 35,
                                              ),
                                            ),
                                          ),
                                      
                                          // số
                                          Text(
                                            textAlign: TextAlign.center,
                                            '1500' '\nremaining',
                                            style: TextStyle(
                                              color: htaPrimaryColors.shade500,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // chỗ này là số kcal đã đốt
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // số
                                          Text(
                                            '500',
                                            style: TextStyle(
                                              color: htaPrimaryColors.shade500,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                      
                                          // chữ
                                          Text(
                                            'kcal burned',
                                            style: TextStyle(
                                              color: htaPrimaryColors.shade500,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              // sleep
                              const Text(
                                'Sleep',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              // chỗ này là cái sleep stats bar chart
                              Container(
                                height: 120, // Đã sửa lại từ 120
                              )
                              // nút xem chi tiết
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      // text how have u changed
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          'How have you changed?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      // cái box hiển thị cân nặng chiều cao
                      HeightWeightChanger(),
                      SizedBox(height: 25,),

                      // how much water j j đấy
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          'How much water consumed today?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      // cái box để hiển thị mấy cái ly nước
                      const WaterIntake(),
                      const SizedBox(
                        height: 25,
                      ),

                      // features
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          'More features',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      // row gồm mấy cái features khác
                      SingleChildScrollView(
                        clipBehavior: Clip.none, // cái này fix lỗi mấy cái shadows bị clipped mất
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              Feature(title: 'BMI Calculator', icon: '🧮',),
                              SizedBox(
                                width: 15,
                              ),
                              Feature(title: 'Diary', icon: '📓',),
                              SizedBox(
                                width: 15,
                              ),
                              Feature(title: 'Set goal', icon: '🎯',),
                              SizedBox(
                                width: 15,
                              ),
                              Feature(title: 'Ask nutritionists', icon: '🧑‍⚕️',),
                            ],
                          ),
                        ),
                      ),

                      // padding dưới
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
