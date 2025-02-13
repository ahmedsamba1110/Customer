import 'package:e_demand/app/generalImports.dart';
import 'package:e_demand/ui/widgets/review/reviewComment.dart';
import 'package:flutter/material.dart';

class ReviewsContainer extends StatelessWidget {
  final EdgeInsets padding;
  final String averageRating;
  final String totalNumberOfRatings;
  final String totalNumberOfFiveStarRating;
  final String totalNumberOfFourStarRating;
  final String totalNumberOfThreeStarRating;
  final String totalNumberOfTwoStarRating;
  final String totalNumberOfOneStarRating;

  final List<Reviews> listOfReviews;

  const ReviewsContainer({
    super.key,
    required this.padding,
    required this.averageRating,
    required this.totalNumberOfRatings,
    required this.totalNumberOfFiveStarRating,
    required this.totalNumberOfFourStarRating,
    required this.totalNumberOfThreeStarRating,
    required this.totalNumberOfTwoStarRating,
    required this.totalNumberOfOneStarRating,
    required this.listOfReviews,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'overAllRating'.translate(context: context),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: context.colorScheme.blackColor,
              ),
              const CustomSizedBox(
                height: 10,
              ),
              RatingBox(
                averageRating: averageRating,
                totalNumberOfRatings: totalNumberOfRatings,
                totalNumberOfOneStarRating: totalNumberOfOneStarRating,
                totalNumberOfTwoStarRating: totalNumberOfTwoStarRating,
                totalNumberOfThreeStarRating: totalNumberOfThreeStarRating,
                totalNumberOfFourStarRating: totalNumberOfFourStarRating,
                totalNumberOfFiveStarRating: totalNumberOfFiveStarRating,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CustomText(
                  'reviewAndRating'.translate(context: context),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: listOfReviews.length,
          itemBuilder: (final BuildContext context, final int index) =>
              ReviewDetails(reviews: listOfReviews[index]),
        ),
      ],
    );
  }
}
