import 'package:flutter/material.dart';
import 'package:jobs_ui/models/job.dart';
import 'package:jobs_ui/route/app_route_name.dart';

class RecentJobWidget extends StatefulWidget {
  const RecentJobWidget({super.key});

  @override
  State<RecentJobWidget> createState() => _RecentJobWidgetState();
}

class _RecentJobWidgetState extends State<RecentJobWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: recentJobs.length,
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRouteName.detail,
              arguments: recentJobs[index],
            );
          },
          child: Container(
            height: 86,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Image(
                    image: AssetImage(recentJobs[index].companyImage),
                    width: 48,
                    height: 48,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recentJobs[index].companyName,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.place_outlined,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            recentJobs[index].locationShort,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Icon(
                            Icons.card_travel_rounded,
                            size: 20,
                          ),
                          Text(
                            recentJobs[index].jobType,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.bookmark_border_rounded),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      recentJobs[index].timeStamp,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
