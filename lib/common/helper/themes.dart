import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//COLOR
const Color primaryColor = Color(0xFFFFFFFF);
const Color secondaryColor = Color(0xFF202D37);
const Color blackColor = Color(0xFF141515);
const Color backgroundPageColor = Color(0xFFF8F4F3);
const Color successColor = Color(0xFF36D100);
const Color lunasColor = Color(0xFF31C78A);
const Color warningColor = Color(0xFFBE1833);
const Color gagalColor = Color(0xFFE3465F);

const Color smoothGreen = Color(0xFF3EB67B);
const Color darkGreen = Color(0xFF357959);

const Color grey = Color(0xFFD0D5DD);
const Color lightGrey = Color(0xFFF5F6F7);
const Color blueGreyColor = Color(0xFF344054);
const Color darkGrey = Color(0xFF808383);

const Color categoryMotor = Color(0xFFFA5A7D);
const Color categoryMobil = Color(0xFF916248);
const Color categoryPBB = Color(0xFFFF844F);
const Color categoryPLN = Color(0xFFFFBF43);
const Color categoryPGN = Color(0xFF5675E3);
const Color categoryBPJS = Color(0xFF41BEBE);
const Color categoryPDAM = Color(0xFF4CABDB);

//FONT STYLES INITIAL

figmaFontsize(int fontSize) {
  return fontSize * 1.2;
}

TextStyle tsHeadlineLargeBoldWhite = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.w700,
  fontSize: figmaFontsize(28),
);

TextStyle tsHeadlineLargeBoldBlack = GoogleFonts.poppins(
  color: blackColor,
  fontWeight: FontWeight.w700,
  fontSize: figmaFontsize(28),
);

TextStyle tsHeadlineSmallBoldDarkBlue = GoogleFonts.poppins(
  color: secondaryColor,
  fontWeight: FontWeight.w700,
  fontSize: figmaFontsize(24),
);

TextStyle tsTitleLargeSemiboldDarkBlue = GoogleFonts.poppins(
  color: secondaryColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(18),
);

TextStyle tsTitleMediumSemiboldWhite = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(20),
);

TextStyle tsTitleMediumSemiboldBlack = GoogleFonts.poppins(
  color: blackColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(20),
);

TextStyle tsTitleSmallSemiboldWhite = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(18),
);

TextStyle tsTitleSmallSemiboldBlack = GoogleFonts.poppins(
  color: blackColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(18),
);

TextStyle tsBodyLargeSemiboldBlack = GoogleFonts.poppins(
  color: blackColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(16),
);

TextStyle tsBodyLargeSemiboldWhite = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(16),
);

TextStyle tsBodyMediumSemiboldWhite = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(14),
);

TextStyle tsBodyMediumSemiboldBlack = GoogleFonts.poppins(
  color: blackColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(14),
);

TextStyle tsBodyMediumSemiboldBlueGrey = GoogleFonts.poppins(
  color: blueGreyColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(14),
);

TextStyle tsBodyMediumSemiboldDarkGrey = GoogleFonts.poppins(
  color: secondaryColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(14),
);

TextStyle tsBodyMediumRegularDarkGrey = GoogleFonts.poppins(
  color: darkGrey,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(14),
);

TextStyle tsBodyMediumRegularBlack = GoogleFonts.poppins(
  color: blackColor,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(14),
);

TextStyle tsBodyMediumRegularWhite = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(14),
);

TextStyle tsBodySmallSemiboldWhite = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(12),
);

TextStyle tsBodySmallSemiboldBlack = GoogleFonts.poppins(
  color: blackColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(12),
);

TextStyle tsBodySmallSemiboldBlueGrey = GoogleFonts.poppins(
  color: blueGreyColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(12),
);

TextStyle tsBodySmallMediumWhite = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.w500,
  fontSize: figmaFontsize(12),
);

TextStyle tsBodySmallMediumDarkGrey = GoogleFonts.poppins(
  color: darkGrey,
  fontWeight: FontWeight.w500,
  fontSize: figmaFontsize(12),
);

TextStyle tsBodySmallMediumDarkBlue = GoogleFonts.poppins(
  color: blueGreyColor,
  fontWeight: FontWeight.w500,
  fontSize: figmaFontsize(12),
);

TextStyle tsBodySmallMediumRed = GoogleFonts.poppins(
  color: warningColor,
  fontWeight: FontWeight.w500,
  fontSize: figmaFontsize(12),
);

TextStyle tsBodySmallMediumBlack = GoogleFonts.poppins(
  color: blackColor,
  fontWeight: FontWeight.w500,
  fontSize: figmaFontsize(12),
);

TextStyle tsBodySmallRegularBlack = GoogleFonts.poppins(
  color: blackColor,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(12),
);

TextStyle tsBodySmallRegularLightGrey = GoogleFonts.poppins(
  color: lightGrey,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(12),
);

TextStyle tsBodySmallRegularBlueGrey = GoogleFonts.poppins(
  color: blueGreyColor,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(12),
);

TextStyle tsLabelSemiboldWhite = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(10),
);

TextStyle tsLabelSemiboldDarkBlue = GoogleFonts.poppins(
  color: secondaryColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(10),
);

TextStyle tsLabelSemiboldBlueGrey = GoogleFonts.poppins(
  color: blueGreyColor,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(10),
);

TextStyle tsLabelMediumDarkBlue = GoogleFonts.poppins(
  color: secondaryColor,
  fontWeight: FontWeight.w500,
  fontSize: figmaFontsize(10),
);

TextStyle tsLabelMediumBlueGrey = GoogleFonts.poppins(
  color: blueGreyColor,
  fontWeight: FontWeight.w500,
  fontSize: figmaFontsize(10),
);

TextStyle tsLabelMediumWhite = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.w500,
  fontSize: figmaFontsize(10),
);

TextStyle tsLabelRegularWhite = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(10),
);

TextStyle tsLabelRegularBlack = GoogleFonts.poppins(
  color: blackColor,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(10),
);

TextStyle tsLabelRegularDarkBlue = GoogleFonts.poppins(
  color: secondaryColor,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(10),
);

TextStyle tsLabelRegularBlueGrey = GoogleFonts.poppins(
  color: blueGreyColor,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(10),
);

TextStyle tsLabelRegularDarkGrey = GoogleFonts.poppins(
  color: darkGrey,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(10),
);

TextStyle tsLabelRegularRed = GoogleFonts.poppins(
  color: warningColor,
  fontWeight: FontWeight.w400,
  fontSize: figmaFontsize(10),
);
