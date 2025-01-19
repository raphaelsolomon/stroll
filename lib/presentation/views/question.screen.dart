import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stroll/presentation/views/widgets/answer.item.dart';
import 'package:stroll/presentation/views/widgets/nav.bar.dart';

class QuestionIndexView extends StatelessWidget {
  const QuestionIndexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF090B0DCC),
      bottomNavigationBar: CustomBottomNavigation(onChanged: (i) {}),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/images.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Gap(10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Stroll Bonfire',
                          style: TextStyle(
                            color: Color(0xFFCCC8FF),
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const Gap(3.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '22h 00m',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.people,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '103',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .49,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(.34),
                    Color(0xFF000000),
                    // Colors.black.withOpacity(.80),
                    Color(0xFF000000)
                  ],
                  stops: [0.0, 0.06, 0.2, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  const Spacer(),
                  SizedBox(
                    height: 95.0,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          child: UserHeaderWidget(),
                        ),
                        Positioned(
                          left: 105.0,
                          top: 30.0,
                          child: SizedBox(
                            width: 290.0,
                            child: Text(
                              'What is your favorite time of the day?',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFF5F5F5),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    child: AutoSizeText(
                      '“Mine is definitely the peace in the morning.”',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFB3ADF6).withOpacity(.8),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const Gap(16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: AnswerItemWidget(
                            option: 'A',
                            title: 'The peace in the early mornings',
                          ),
                        ),
                        const Gap(16.0),
                        Flexible(
                          child: AnswerItemWidget(
                            option: 'B',
                            title: 'The magical golden hours',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: AnswerItemWidget(
                            option: 'C',
                            title: 'Wind-down time after dinners',
                          ),
                        ),
                        const Gap(16.0),
                        Flexible(
                          child: AnswerItemWidget(
                            option: 'D',
                            title: 'The serenity past midnight',
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Text(
                            'Pick your option.\n'
                            'See who has a similar mind.',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFE5E5E5),
                            ),
                          ),
                        ),
                        MicButton(),
                        const Gap(10.0),
                        ForwardButton()
                      ],
                    ),
                  ),
                  const Gap(25.0),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class UserHeaderWidget extends StatelessWidget {
  const UserHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 16.0,
          ),
          margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .14,
            right: 24.0,
            top: 1.0,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFF121517),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(20.0),
              Text(
                'Angelina, 28',
                style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(
                width: 7.0,
                color: Color(0xFF121517),
              ),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/508b/3fd0/37a6f948735011175e374f6c78eca90e?Expires=1737936000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dahnYw9zxZkAw~NCJup3mrdmCW6HkPKpWJXQtAjJ1DD7ZemQyk--cMmFHdaYlYBzc5owSOcYh8H3AOQc9Zbh4O6ef1kQho0jlRU07yfTPPH-e6WvrXkqTsoSXZU87Rgb5hJUyA1spKndTtz0TDotpTv7Id40K11mtDdPyjuDpR81u0R8~bZCGdLo2LCyuhTAr9G2cMlKkbUin-5rdUljfUkIlma2CBSpz1aYjBxD6x0Mi3P0ft7QESO3DlM~l5C1JfW3ghPuckxXiS~YB2u3JDMQpTf4VXxIM7z6Uj22hHJWnv2bAhJy3twQfbLP7TEmwTw2yuHTyZF0MqxcNzwpWw__',
              ),
              radius: 30.0,
            ),
          ),
        ),
      ],
    );
  }
}

class MicButton extends StatelessWidget {
  const MicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.2,
          color: Color(0xFF8B88EF),
        ),
        borderRadius: BorderRadius.circular(
          100.0,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      child: Icon(
        Icons.mic,
        size: 24.0,
        color: Color(0xFF8B88EF),
      ),
    );
  }
}

class ForwardButton extends StatelessWidget {
  const ForwardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF8B88EF),
        borderRadius: BorderRadius.circular(
          100.0,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      child: Icon(
        Icons.arrow_forward,
        size: 24.0,
        color: Colors.black,
      ),
    );
  }
}
