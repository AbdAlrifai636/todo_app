class OnBoardingData{
  String image;
  String title;
  String subTitle ;
  String buttonText;
  OnBoardingData({required this.image,required this.title,required this.subTitle,required this.buttonText});

static List<OnBoardingData> onBoardingData =[
  OnBoardingData(
      image: "assets/images/img_1.png",
      title: "Write Lists",
      subTitle: "Write your tasks in a list and check them when done!",
      buttonText: "Next"),
  OnBoardingData(
      image: "assets/images/img_2.png",
      title: "Stay Organized",
      subTitle: "Group your tasks and keep them organized",
      buttonText: "Next"),
  OnBoardingData(
      image: "assets/images/img_3.png",
      title: "Check Progress",
      subTitle: "See how much you have done from your tasks",
      buttonText: "Let’s Start"),
];
}