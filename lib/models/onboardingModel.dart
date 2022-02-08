class OnBoardingModel {
  final String title;
  final String image;

  OnBoardingModel({
    required this.title,
    required this.image,
  });
}

List<OnBoardingModel> onboardingContents = [
  OnBoardingModel(
    title: 'Welcome To\n Monumental Habits',
    image: 'assets/images/onboarding_image_1.png',
  ),
  OnBoardingModel(
    title: 'Create new habits easily',
    image: 'assets/images/onboarding_image_2.png',
  ),
  OnBoardingModel(
    title: 'Keep track of your progress',
    image: 'assets/images/onboarding_image_3.png',
  ),
  OnBoardingModel(
    title: 'Join a supportive community',
    image: 'assets/images/onboarding_image_4.png',
  ),
];
