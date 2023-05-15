import 'package:flutter/material.dart';
import 'package:jobs_ui/home_component/category_widget.dart';
import 'package:jobs_ui/home_component/headline_widget.dart';
import 'package:jobs_ui/home_component/recent_job_widget.dart';
import 'package:jobs_ui/home_component/tips_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          splashRadius: 24,
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Hello, Abbosbek",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 24,
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.black,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Developer, google, etc",
                  hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.grey[500],
                  ),
                  prefixIcon: const Icon(Icons.search,size: 28,),
                  prefixIconColor: Colors.grey[500],
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none
                  )
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(24),
        child: Column(
          children: const [
            HeadlineWidget(title: 'Tips for you',),
            SizedBox(height: 24,),
            TipsWidget(),
            SizedBox(height: 24,),
            HeadlineWidget(title: 'Category',),
            SizedBox(height: 24,),
            CategoryWidget(),
            SizedBox(height: 24,),
            HeadlineWidget(title: 'Recent Jobs',),
            SizedBox(height: 24,),
            RecentJobWidget()
          ],
        ),
      )
    );
  }
}
