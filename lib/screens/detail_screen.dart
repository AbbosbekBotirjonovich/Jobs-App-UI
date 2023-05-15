import 'package:flutter/material.dart';
import 'package:jobs_ui/models/job.dart';

enum _Tab {
  requirement,
  about,
}

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final selectedTab = ValueNotifier(_Tab.requirement);

  @override
  Widget build(BuildContext context) {
    Job job = ModalRoute.of(context)?.settings.arguments as Job;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          splashRadius: 24,
          icon: const Icon(
            Icons.arrow_back_ios_new,
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
              Icons.bookmark_border_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    child: Image(
                      image: AssetImage(
                        job.companyImage,
                      ),
                      width: 96,
                      height: 96,
                    ),
                  ),
                  Text(
                    job.jobTitle,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    job.companyName,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.2),
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.place_outlined,
                              color: Theme.of(context).primaryColor,
                              size: 28,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            job.location,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.2),
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.attach_money_rounded,
                              color: Theme.of(context).primaryColor,
                              size: 28,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "\$${job.salary} / month",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.2),
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.card_travel_rounded,
                              color: Theme.of(context).primaryColor,
                              size: 28,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            job.jobType,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ValueListenableBuilder(
                    valueListenable: selectedTab,
                    builder: (context, value, child) {
                      return Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8)),
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                              left: value == _Tab.requirement
                                  ? 0
                                  : (MediaQuery.of(context).size.width - 48) /
                                      2,
                              duration: const Duration(milliseconds: 300),
                              child: Container(
                                height: 40,
                                width:
                                    (MediaQuery.of(context).size.width - 48) /
                                        2,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                            Align(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedTab.value = _Tab.requirement;
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        color: Colors.transparent,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Requirement",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedTab.value = _Tab.about;
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        color: Colors.transparent,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "About",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ValueListenableBuilder(
                      valueListenable: selectedTab,
                      builder: (context, value, child) {
                        return value == _Tab.requirement
                            ? ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: job.requirements.length,
                              separatorBuilder: (context, index) {
                                return const Divider();
                              },
                              itemBuilder: (context, index) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "-",
                                      style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(height: 1.4),
                                    ),
                                    Expanded(
                                      child:Text(
                                        job.requirements[index],
                                        style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(height: 1.4),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            )
                            : Text(
                                job.about,
                                style:
                                 Theme.of(context)
                                 .textTheme
                                 .bodyLarge
                                 ?.copyWith(height: 1.4),
                              );
                      }),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: Text(
                  "Apply now".toUpperCase(),
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
    );
  }
}
