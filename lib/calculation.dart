import 'dart:math';
class calculation
{ calculation({required this.height,required this.weight});
  final int height;
final int weight;

  double bmi=0.0;
  String calculatebmi()
  {
    bmi=weight/pow(height/100,2);
    return bmi.toStringAsFixed(2);
  }
  String getResult()
  {  if(bmi>=25)
    {
      return "overweight";
    }
    else if(bmi>18.5)
      {
        return "Normal";
      }
    else {
      return "Underweight";
  }

  }

}
