import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klik_kas/core/utils/theme_utils.dart';
import 'package:klik_kas/core/widgets/contents/animated_tap_target.dart';
import 'package:klik_kas/gen/assets.gen.dart';
import 'package:klik_kas/l10n/l10n.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const _BackgroundOrbs(),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 32.w),
                      child: Column(
                        children: [
                          SizedBox(height: 60.h),
                          const _BrandSection(),
                          SizedBox(height: 40.h),
                          const _DashboardCard(),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  ),
                ),
                const _ActionsFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundOrbs extends StatelessWidget {
  const _BackgroundOrbs({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return Positioned.fill(
      child: IgnorePointer(
        child: Stack(
          children: [
            Positioned(
              top: -60.h,
              right: -60.w,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                child: Container(
                  width: 280.w,
                  height: 220.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorScheme.primaryFixedDim.withAlpha(28),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -40.h,
              left: -60.w,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
                child: Container(
                  width: 300.w,
                  height: 180.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorScheme.secondaryFixed.withAlpha(18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BrandSection extends StatelessWidget {
  const _BrandSection();

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;
    final l10n = context.l10n;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24.r),
          child: Assets.svg.klikkasLogo.svg(width: 64.r, height: 64.r),
        ),

        SizedBox(height: 20.h),

        Text(
          l10n.app_name,
          style: textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.primary,
            letterSpacing: -0.5,
          ),
        ),

        SizedBox(height: 12.h),

        Text(
          l10n.welcome_to_klikkas_manage_your_shops_finances_quickly_and_easily,
          textAlign: TextAlign.center,
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _DashboardCard extends StatelessWidget {
  const _DashboardCard();

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return Stack(
      alignment: Alignment.center,
      children: [
        // Glow behind card
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: Container(
            width: 260.w,
            height: 260.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // Color is now inside the filtered child
              color: colorScheme.primaryFixedDim.withAlpha(20),
            ),
          ),
        ),

        // Tilted card
        Transform.rotate(
          angle: 0.035, // ~2 degrees
          child: Container(
            width: 260.w,
            height: 260.w,
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(24.r),
              boxShadow: [
                BoxShadow(
                  color: colorScheme.primary.withAlpha(8),
                  blurRadius: 30,
                  spreadRadius: 2,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            padding: EdgeInsets.all(12.r),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Assets.images.dashboardMockup.image(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ActionsFooter extends StatelessWidget {
  const _ActionsFooter();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(32.w, 0, 32.w, 40.h),
      child: Column(
        children: [
          _GoogleSignInButton(),
          SizedBox(height: 12.h),
          _SignUp(),
          SizedBox(height: 16.h),
          _TermsText(),
        ],
      ),
    );
  }
}

class _GoogleSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colorScheme = context.colorScheme;
    return AnimatedTapTarget(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 56.h,
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(
            color: colorScheme.outlineVariant.withAlpha(75),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(10),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.svg.googleLogo.svg(width: 22.r, height: 22.r),
            SizedBox(width: 10.w),
            Text(
              l10n.sign_in_with_google,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colorScheme = context.colorScheme;
    return AnimatedTapTarget(
      onTap: (){},
      child: Container(
        width: double.infinity,
        height: 56.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [colorScheme.primary, colorScheme.primaryContainer],
          ),
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: [
            BoxShadow(
              color: colorScheme.primary.withAlpha(30),
              blurRadius: 16,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Center(
          child: Text(
            l10n.sign_up,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              letterSpacing: 0.2,
            ),
          ),
        ),
      ),
    );
  }
}

class _TermsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colorScheme = context.colorScheme;
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '${l10n.by_continuing_you_agree_to_our} ',
            style: TextStyle(
              fontSize: 11.sp,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          TextSpan(
            text: l10n.terms_of_service,
            recognizer: TapGestureRecognizer()
              ..onTap = () {},
            style: TextStyle(
              fontSize: 11.sp,
              color: colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: l10n.dot,
            style: TextStyle(
              fontSize: 11.sp,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
