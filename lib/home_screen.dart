import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text('City Tour'),
      backgroundColor: Colors.blue,
    ),
    body: SingleChildScrollView(
      child: Padding(padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildGallerySection(),
              const SizedBox(height: 24),
              _buildTextSection(),
              const SizedBox(height: 24),
              _buildBottomImageSection(context),
            ],
          ),
      ),
    ),
  );
}

Widget _buildGallerySection(){
  final List<String> imageUrls = [
    'https://picsum.photos/id/162/300/200',
    'https://picsum.photos/id/164/300/200',
    'https://picsum.photos/id/174/300/200',
  ];
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: imageUrls.map((url){
        return Padding(padding: const EdgeInsets.only(right: 12.0),
          child: _buildGalleryItem(url),
        );
      }).toList(),
    ),
  );
}

Widget _buildGalleryItem(String url){
  return ClipRRect(
    borderRadius: BorderRadius.circular(8.0),
    child: Image.network(
      url,
      height: 300,
      width: 150,
      fit: BoxFit.cover,
    ),
  );
}

Widget _buildTextSection(){
  const String description =
      "Explore the charm of our city's hidden gems and embark on a journey to"
      "discover the rich cultural heritage, breathtaking landscapes, and unique experiences that"
      "await you. From historic landmarks to vibrant markets and serene natural wonders, our city"
      "offers a tapestry of experiences that will captivate your senses."
      "Join us in exploring the beauty of our city and create memories that will last a lifetime. "
      "Come and visit our city's treasures today";

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      Text(
        'Explore, Enjoy, Experience',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      SizedBox(height: 12),
      Text(
        description,
        style: TextStyle(
          fontSize: 16,
          height: 1.4,
          color: Colors.black54,
        ),
        textAlign: TextAlign.justify,
      )
    ],
  );

}

Widget _buildBottomImageSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          'https://picsum.photos/id/162/200/300',
          height: 250,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(height: 10),
      const Text(
        'Blue body of water',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
    ],
  );
}
}