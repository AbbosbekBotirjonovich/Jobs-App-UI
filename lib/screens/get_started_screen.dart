import 'package:flutter/material.dart';
import 'package:jobs_ui/route/app_route_name.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/img_started.png')),
                gradient: LinearGradient(colors: [
                  Theme.of(context).primaryColor.withOpacity(0.5),
                  Colors.white
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  bottom: MediaQuery.of(context).padding.bottom + 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Find your dream job and build your carrier',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Explore ever 1000000 available jobs and boost your carrier',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  const Expanded(child: SizedBox()),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouteName.homeScreen);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16))),
                      child: Text(
                        "EXPLORE NOW",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
