import 'package:flutter/material.dart';
import 'package:musilore/core/utils/color/colors.dart';
import 'package:musilore/core/utils/size/size.dart';
import 'package:musilore/core/utils/text/txt.dart';
import 'package:musilore/presentation/pages/home/widgets/app_bar/widgets/settings/widgets/about/about.dart';
import 'package:musilore/presentation/pages/home/widgets/app_bar/widgets/settings/widgets/privacy_policy/privacy_policy.dart';
import 'package:musilore/presentation/pages/home/widgets/app_bar/widgets/settings/widgets/sync_now_btn.dart';
import 'package:musilore/presentation/pages/home/widgets/app_bar/widgets/settings/widgets/theme_changer/theme_changer_swich.dart';
import 'package:musilore/presentation/pages/home/widgets/app_bar/widgets/settings/widgets/volume_adjuster/volume_adjuster.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    super.key,
    required this.darkThemeStatus,
    required this.secondaryColor,
  });

  final bool darkThemeStatus;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    return PopupMenuTheme(
      data: PopupMenuThemeData(
        position: PopupMenuPosition.over,
        textStyle: const TextStyle(
          color: primaryColor,
          fontFamily: textFontFamilyName,
          fontSize: h3Size,
        ),
        color: darkThemeStatus ? primaryTextColor : secondaryColor,
      ),
      child: PopupMenuButton(
        icon: const Icon(Icons.settings),
        itemBuilder: (context) => [
          PopupMenuItem(
            child: VolumeAdjuster(
                darkThemeStatus: darkThemeStatus,
                secondaryColor: secondaryColor),
          ),
          PopupMenuItem(
            child: ThemeChangerSwitch(
              darkThemeStatus: darkThemeStatus,
              secondaryColor: secondaryColor,
            ),
          ),
          PopupMenuItem(
            child: SyncMusic(
              secondaryColor: secondaryColor,
            ),
          ),
          PopupMenuItem(
            child: PrivacyPolicy(
                darkThemeStatus: darkThemeStatus,
                secondaryColor: secondaryColor),
          ),
          PopupMenuItem(
            child: About(
                darkThemeStatus: darkThemeStatus,
                secondaryColor: secondaryColor),
          ),
        ],
      ),
    );
  }
}
