import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServic {
  final Dio dio ;
  NewsServic(this.dio);
  //كدا عملت object من نوع Dio عشان استخدمه

  Future<List<ArticleModel>> getNews( String category)async{
    
     //هنا انا عملت functiooاسمهاgetNews  دي اللي هتجيب الrequest وهخليها asyncعشان هجيب حاجات من النت فهتاخج وقت دلوقتي عملت الطلب الرد اللي هيجي لازم اخزنه في متغير اسمه respons
   final response = await dio.get(
  "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=f0b2b3e642cf46fc9130d4afa7833a3b"
);

    Map<String , dynamic> json=response.data;//دي الماب الكبيره اللي فيها الداتا كلها واسمها json
    List<dynamic> articles=json['articles'];//اناعايزه اي من الماب الكبيره ي كلها عايزه بس البarticles حلو عملت ليست اسمها articlesهحط فيها ال articls 
     //articles دي جواها مقالات كتيرباللتالي هعمل for loop  فيها متغير اسمه art بيلف علي كل الarticles وبيعمل مودل اسمه ArticalModel  لكل artical
  //وبعدين هعمل Listاخزن فيها الarticals
  
  List<ArticleModel> arts =[];
  
  for(var art in articles){
    ArticleModel articles =ArticleModel(
      author: art["author"]??"not found author",
       title: art["title"]?? "not Foound titel",
        description: art["description"]?? "not Foound describtion",
         urlToImage: art["urlToImage"]??"https://media.istockphoto.com/id/1396814518/vector/image-coming-soon-no-photo-no-thumbnail-image-available-vector-illustration.jpg?s=612x612&w=0&k=20&c=hnh2OZgQGhf0b46-J2z7aHbIWwq8HNlSDaNp2wn_iko=",
         publishedAt: art["publishedAt"]?? "not Foound publishedA ",
    );
    arts.add(articles);                                                                           //هنا بقوله الList اللي اسمهاartsخزن فيها الarticalesمع كل لفه
  }
  return arts;
  }




} 

