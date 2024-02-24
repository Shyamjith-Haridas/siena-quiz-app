class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Get Ready to Quiz",
    image: "assets/images/image1.png",
    desc: "Discover Exciting Quiz Categories, Improve Your Skills",
  ),
  // OnboardingContents(
  //   title: "Stay organized with team",
  //   image: "assets/images/image2.png",
  //   desc:
  //       "But understanding the contributions our colleagues make to our teams and companies.",
  // ),
  OnboardingContents(
    title: "The Ultimate Quiz Challege!",
    image: "assets/images/image2.png",
    desc: "Think you're a genius? Prove it with our challenging quizzes!",
  ),
  // OnboardingContents(
  //   title: "Get notified when work happens",
  //   image: "assets/images/image3.png",
  //   desc:
  //       "Take control of notifications, collaborate live or on your own time.",
  // ),
  OnboardingContents(
    title: "Test Your Knowledge",
    image: "assets/images/image3.png",
    desc: "Challenge yourself with a variety of quizzes.",
  ),
];
