import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import 'AboutDetailscontainer.dart';

class AboutPageViewBody extends StatelessWidget {
  const AboutPageViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/new-mascot.png'),
              const SizedBox(
                height: 50,
              ),
              Text(
                'About Us',
                style: Styles.style22.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                  style: Styles.style18,
                  'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ut dolorum quasi illo? Distinctio expedita commodi, nemo a quam error repellendus sint, fugiat quis numquam eum eveniet sequi aspernatur quaerat tenetur.'),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        SliverList.builder(
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: AboutPageDetailsContainer(),
            );
          },
          itemCount: 4,
        ),
        SliverToBoxAdapter(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 25,
            ),
            Text(
              'Student\'s Reviews',
              style: Styles.style22.copyWith(fontWeight: FontWeight.w700),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            SizedBox(height: 15,),
            StudentReviewContainer()
          ]),
        )
      ],
    );
  }
}
class StudentReviewContainer extends StatelessWidget {
  const StudentReviewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Necessitatibus, suscipit a. Quibusdam, dignissimos consectetur. Sed ullam iusto eveniet qui aut quibusdam vero voluptate libero facilis fuga. Eligendi eaque molestiae modi?',
            style: Styles.style22.copyWith(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(radius: 20, child: Image.asset('assets/images/pic-1.jpg')),
              SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('john deo', style: Styles.style20.copyWith(fontSize: 16)),
                    SizedBox(height: 3),
                    Container(
                      height: 30, // Set a fixed height or use Expanded to take all available space
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Icon(Icons.star, color: Color.fromARGB(255, 240, 201, 27));
                        },
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
