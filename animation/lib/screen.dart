import 'package:animation/food.dart';
import 'package:animation/screen2.dart';
import 'package:flutter/material.dart';

void init(List<food> list_food) {
  list_food.add(food("Cocacola", "assets/coca.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Pepsi", "assets/pepsi.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Trà sữa matcha", "assets/matcha.jpeg",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Bánh mì", "assets/banhmi.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Hamburger", "assets/ham.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Pizza", "assets/pizza.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Donut", "assets/donut.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Cocacola", "assets/coca.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Pepsi", "assets/pepsi.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Trà sữa matcha", "assets/matcha.jpeg",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Bánh mì", "assets/banhmi.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Hamburger", "assets/ham.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
}

class screen extends StatelessWidget {
  const screen({super.key});

  @override
  Widget build(BuildContext context) {
    List<food> list_food = [];
    init(list_food);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Text(
            "Menu",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: list_food.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Hero(
                      tag: "tag",
                      child: Card(
                        child: ListTile(
                          title: SizedBox(
                            height: 20,
                            child: Text(list_food[index].name),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => screen2()));
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
