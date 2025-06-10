import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _AssignmentScreenState();
}
final pic1 =
      "https://wimg.heraldcorp.com/content/default/2023/04/24/20230424000728_0.jpg";

class _AssignmentScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(110, 100, 132, 121),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(152, 117, 78, 78),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    child: Image.network(
                      pic1,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    right: 12,
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 163, 72, 44),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Get Tickets',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'TaeYang Biography',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Taeyang (real name: Dong Young-bae) is a South Korean singer, dancer, and songwriter. He is best known as a member of the K-pop group BigBang, which debuted under YG Entertainment in 2006. Taeyang is renowned for his powerful voice, smooth dance moves, and musical versatility, blending R&B, hip-hop, and pop.',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.shopping_cart_outlined),
                    SizedBox(width: 8),
                    Icon(Icons.favorite_border),
                    SizedBox(width: 8),
                    Icon(Icons.bookmark_border),
                    Spacer(),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
