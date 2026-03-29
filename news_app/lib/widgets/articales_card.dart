import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class ArticalesCardWidGet extends StatelessWidget {
  const ArticalesCardWidGet({super.key, required this.articale});
  final ArticleModel articale;

  @override
  Widget build(BuildContext context) {
    //ArticalCardWidgetدي هتعرض ArticalModel
    return Container(
       
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(10),
      width: double.infinity,
    
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 235, 233, 233),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3)
          )
        ]
      ),
      child: Column(
         mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            
            width: 300,
            height: 200,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: 
              NetworkImage(articale.urlToImage),
              fit: BoxFit.fill,
              )
            ),
          ),
          Text(articale.title,style: 
        
          TextStyle(

            color: Colors.blueGrey,
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          Text(articale.description,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            
            
            color: Colors.blueGrey,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text(articale.author,style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                          ),),
              ),
              Text(articale.publishedAt,style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),),
            ],
          )

        ],
      ),
    );

    // وقفت عند دقيقه عشره
  }
}