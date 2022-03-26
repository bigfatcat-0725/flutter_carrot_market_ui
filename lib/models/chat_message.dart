class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUri;

  ChatMessage({
    required this.sender,
    required this.profileImage,
    required this.location,
    required this.sendDate,
    required this.message,
    this.imageUri,
  });
}

List<ChatMessage> chatMessageList = [
  ChatMessage(
    sender: '당근이',
    profileImage: 'https://www.daangn.com/logo.png',
    location: '',
    sendDate: '1일전',
    message: 'developer 님,근처에 다양한 물품들이 아주 많이있습니다.',
  ),
  ChatMessage(
    sender: '쿨가이 ',
    profileImage:
        'https://img.insight.co.kr/static/2021/08/05/700/img_20210805135606_771szsph.webp',
    location: '당근2동',
    sendDate: '1일전',
    message: '쿨거래 5천원 깍아주세요.',
  ),
  ChatMessage(
      sender: 'Flutter ',
      profileImage: 'https://placeimg.com/200/100/people',
      location: '당근1동',
      sendDate: '2일전',
      message: '안녕하세요 지금 다 예약 상태 인가요?',
      imageUri: 'https://placeimg.com/200/100/tech/grayscale')
];
