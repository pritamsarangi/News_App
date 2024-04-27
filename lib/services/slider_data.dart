import 'package:newsapp/models/slider_model.dart';

import '../models/slider_model.dart';

List<sliderModel> getSliders(){
  List<sliderModel> slider=[];
  sliderModel categoryModel= new sliderModel();

  categoryModel.image = "images/business.jpg";
  categoryModel.name = "Bow To The Authority of Silentforce";
  slider.add(categoryModel);
  categoryModel = new sliderModel();

  categoryModel.image = "images/entertainment.jpg";
  categoryModel.name = "Bow To The Authority of Silentforce";
  slider.add(categoryModel);
  categoryModel = new sliderModel();

  categoryModel.image = "images/health.jpg";
  categoryModel.name = "Bow To The Authority of Silentforce";
  slider.add(categoryModel);
  categoryModel = new sliderModel();

  return slider;
}