import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [
            SizedBox(
              height: 36,
              width: 36,
              child: MaterialButton(
                padding: EdgeInsets.zero,
                color: const Color.fromARGB(255, 184, 84, 141),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                onPressed: () {},
                child: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
          ],
          title: Text(
            "Profile",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
                width: double.infinity,
              ),
              MaterialButton(
                onPressed: () {},
                splashColor: Colors.purpleAccent,
                padding: const EdgeInsets.all(8),
                shape: const CircleBorder(),
                child: const Stack(children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Color.fromARGB(255, 228, 185, 154),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius: 60,
                        foregroundImage: NetworkImage(
                            "https://th.bing.com/th/id/R.2092847f219fb27804cde81ace8d0bdb?rik=veiEqxJu3OtNTQ&pid=ImgRaw&r=0"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    right: 6,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                      size: 26,
                    ),
                  )
                ]),
              ),
              Text(
                "Cat Verse",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "Student at University of Catford",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Divider(
                color: Colors.deepPurple.withOpacity(0.3),
                thickness: 2,
                height: 32,
              ),
              const ProfileTile(),
              const SizedBox(
                height: 16,
              ),
              const ProfileTile(),
              const SizedBox(
                height: 16,
              ),
              const ProfileTile(),
              const SizedBox(
                height: 16,
              ),
              const ProfileTile(),
              const SizedBox(
                height: 16,
              ),
              const ProfileTile(),
              SizedBox(
                height: 24,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: Container(
                    width: double.maxFinite,
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Logout",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Colors.white,
                        )
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Container(
          width: double.maxFinite,
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.deepPurple.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Icon(Icons.person),
              const SizedBox(
                width: 16,
              ),
              Text(
                "Edit Profile",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios, size: 16)
            ],
          )),
    );
  }
}
