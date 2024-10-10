part of '../main_section.dart';

class _MobileDrawer extends StatefulWidget {
  const _MobileDrawer();

  @override
  State<_MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<_MobileDrawer> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Drawer(
      child: Material(
        color: appProvider.isDark ? Colors.grey[900] : Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: NavBarLogo(),
              ),
              const Divider(),
              ListTile(
                leading: Icon(
                  Icons.light_mode,
                  color: AppTheme.c!.primary!,
                ),
                title: const Text(
                  "Dark Mode",
                ),
                trailing: DayNightToggleSwitch(
                  isDarkMode: isDark,
                  onChanged: (value) {
                    setState(() {
                      isDark = value;
                      appProvider
                          .setTheme(value ? ThemeMode.dark : ThemeMode.light);
                    });
                  },
                  dayColor: AppTheme.light.primary!,
                  nightColor: AppTheme.dark.textSub!,
                  sunImage: const AssetImage('assets/photos/sun.png'),
                  moonImage: const AssetImage('assets/photos/half-moon.png'),
                ),
                // trailing: Switch(
                //   inactiveTrackColor: Colors.grey,
                //   value: appProvider.isDark,
                //   onChanged: (value) {
                //     appProvider
                //         .setTheme(value ? ThemeMode.dark : ThemeMode.light);
                //   },
                //   activeColor: AppTheme.c!.primary,
                // ),
              ),
              const Divider(),
              ...NavBarUtils.names.asMap().entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        hoverColor: AppTheme.c!.primary!.withAlpha(70),
                        onPressed: () {
                          scrollProvider.scrollMobile(e.key);
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Icon(
                            NavBarUtils.icons[e.key],
                            color: AppTheme.c!.primary,
                          ),
                          title: Text(
                            e.value,
                            style: AppText.l1,
                          ),
                        ),
                      ),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: AppTheme.c!.primary!.withAlpha(150),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: AppTheme.c!.primary!)),
                  onPressed: () => openURL(StaticUtils.resume),
                  child: const ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.red,
                    ),
                    title: Text(
                      'RESUME',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
