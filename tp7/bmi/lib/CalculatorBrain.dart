import 'dart:math';

import 'package:flutter/material.dart';
class CalculatorBrain{
  final int taille;
  final int poids;
  double _bmi=0;

  CalculatorBrain({required this.taille,required this.poids});

    String CalculDuBMI(){
      _bmi=poids/pow(taille/100,2);
      return _bmi.toStringAsFixed(1);
    }

    String getResultat(){
      if(_bmi>=25){
        return 'Surpoids';
      }else if(_bmi>18.5){
        return 'Normal';
      }
      return 'insuffisance pondérale';
    }

  String getInterpretation(){
    if(_bmi>=25){
      return 'Surpoids';
    }else if(_bmi>18.5){
      return 'Normal';
    }
    return 'Vous devez manger un peu plus';
  }


}