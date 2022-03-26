import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconMenu {
  final String title;
  final IconData iconData;

  IconMenu({required this.title, required this.iconData});
}

final List<IconMenu> iconMenu1 = [
  IconMenu(title: '내 동네 설정', iconData: FontAwesomeIcons.locationDot),
  IconMenu(title: '동네 인증하기', iconData: FontAwesomeIcons.minimize),
  IconMenu(title: '알림 키워드 등록', iconData: FontAwesomeIcons.tag),
  IconMenu(title: '관심 카테고리 설정', iconData: FontAwesomeIcons.sliders)
];

final List<IconMenu> iconMenu2 = [
  IconMenu(title: '모아보기', iconData: FontAwesomeIcons.borderAll),
  IconMenu(title: '당근가계부', iconData: FontAwesomeIcons.calendar),
  IconMenu(title: '받은 쿠폰함', iconData: FontAwesomeIcons.ticket),
  IconMenu(title: '내 단골 가게', iconData: FontAwesomeIcons.store),
];

final List<IconMenu> iconMenu3 = [
  IconMenu(title: '동네생활 글/댓글', iconData: FontAwesomeIcons.filePen),
  IconMenu(title: '동네 가게 후기', iconData: FontAwesomeIcons.comment)
];

final List<IconMenu> iconMenu4 = [
  IconMenu(title: '비즈프로필 만들기', iconData: FontAwesomeIcons.houseUser),
  IconMenu(title: '동네홍보 글', iconData: FontAwesomeIcons.rectangleList),
  IconMenu(title: '지역광고', iconData: FontAwesomeIcons.bullhorn),
];

final List<IconMenu> iconMenu5 = [
  IconMenu(title: '친구초대', iconData: FontAwesomeIcons.envelope),
  IconMenu(title: '당근마켓 공유', iconData: FontAwesomeIcons.shareNodes),
  IconMenu(title: '공지사항', iconData: FontAwesomeIcons.microphone),
  IconMenu(title: '자주 묻는 질문', iconData: FontAwesomeIcons.headset),
  IconMenu(title: '앱 설정', iconData: FontAwesomeIcons.gear),
];
