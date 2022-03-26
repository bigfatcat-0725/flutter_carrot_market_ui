class NeighborhoodLife {
  final String category;
  final String profileImgUri;
  final String userName;
  final String location;
  final String content;
  final String contentImgUri;
  final int commentCount;
  final String date;

  NeighborhoodLife({
    required this.category,
    required this.profileImgUri,
    required this.userName,
    required this.location,
    required this.content,
    required this.contentImgUri,
    required this.commentCount,
    required this.date,
  });
}

final List searchLifeKeyword = [
  '동네질문',
  '동네맛집',
  '동네소식',
  '취미생활',
  '분실/실종센터',
  '동네사건사고',
  '해주세요',
  '일상',
  '고양이',
  '강아지',
  '건강',
  '살림',
  '인테리어',
  '교육/학원',
  '동네사진전',
  '출산/육아',
  '기타'
];

List<NeighborhoodLife> neighborhoodLifeList = [
  NeighborhoodLife(
    category: '동네질문',
    profileImgUri:
        'https://images.chosun.com/resizer/OXrnN3OlFesXmgmLyS3_FulhAts=/600x600/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/UVBJZL3RXAB36BDSHVM3MW2WNY.jpg',
    userName: '포켓몬빵',
    location: '당근1동',
    content: '포켓몬빵 파는 곳 아시나요?\n'
        '주변에서 다 안판다고 하네요;',
    contentImgUri:
        'https://fastpick.co.kr/wp-content/uploads/2022/03/output_2403751297-1.jpg',
    commentCount: 2,
    date: '1시간전',
  ),
  NeighborhoodLife(
    category: '동네사건사고',
    profileImgUri:
        'https://images.chosun.com/resizer/OXrnN3OlFesXmgmLyS3_FulhAts=/600x600/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/UVBJZL3RXAB36BDSHVM3MW2WNY.jpg',
    userName: '아오흥정그만해',
    location: '당근1동',
    content: '흥정 좀 작작하세요\n'
        '아오 진짜...',
    contentImgUri:
        'http://static.news.zumst.com/images/55/2013/03/07/XCDE68F3Y4XKJB1M53WV.jpg',
    commentCount: 2,
    date: '1시간전',
  ),
  NeighborhoodLife(
    category: '동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '헬로비비',
    location: '당근1동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://placeimg.com/200/100/tech/grayscale',
    commentCount: 11,
    date: '3시간전',
  ),
  NeighborhoodLife(
    category: '건강',
    profileImgUri: 'https://placeimg.com/200/100/people',
    userName: '당근토끼',
    location: '당근2동',
    content: '이명 치료 잘 아시는 분 있나요?',
    contentImgUri: 'https://placeimg.com/200/100/animal/grayscale',
    commentCount: 2,
    date: '1일전',
  ),
  NeighborhoodLife(
    category: '분실/실종센터',
    profileImgUri: 'https://placeimg.com/200/100/nature/grayscale',
    userName: 'flutter',
    location: '당근1동',
    content: '롯데캐슬 방향으로 재래시장 앞쪽 지나 혹시 에어팟 오른쪽 주우신 분 있나요ㅜㅜ',
    contentImgUri: '',
    commentCount: 11,
    date: '1일전',
  ),
  NeighborhoodLife(
    category: '동네질문',
    profileImgUri: 'https://placeimg.com/200/100/any',
    userName: '구름나드리',
    location: '당근2동',
    content: '밤부터 새벽까지 하던 토스트 아저씨 언제 다시 오나요ㅜㅠ',
    contentImgUri: '',
    commentCount: 0,
    date: '3일전',
  ),
  NeighborhoodLife(
    category: '동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '아는형',
    location: '당근1동',
    content: '아니 이 시간에 마이크 들고 노래하는 사람은 정상인가요?',
    contentImgUri: 'https://placeimg.com/200/100/tech',
    commentCount: 11,
    date: '5일전',
  ),
];
