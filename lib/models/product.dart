class Product {
  String title;
  String author;
  String address;
  String urlToImage;
  String publishedAt;
  String price;
  int heartCount;
  int commentsCount;
  String description;
  String category;

  Product({
    required this.title,
    required this.author,
    required this.address,
    required this.urlToImage,
    required this.publishedAt,
    required this.price,
    required this.heartCount,
    required this.commentsCount,
    required this.description,
    required this.category,
  });
}

// 샘플 데이터
List<Product> productList = [
  Product(
    title: '포켓몬빵',
    author: '당근유저1',
    urlToImage:
        'https://fastpick.co.kr/wp-content/uploads/2022/03/output_2403751297-1.jpg',
    publishedAt: '1시간 전',
    heartCount: 8,
    price: '3000',
    address: '당근1동',
    commentsCount: 5,
    description: '포켓몬빵 팝니다. 씰 포함.\n당근동 직거래\n흥정 사절.',
    category: '식품',
  ),
  Product(
    title: '아이폰13',
    author: '당근유저2',
    urlToImage:
        'https://newsroom-prd-data.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2021/10/SKT%EB%89%B4%EC%8A%A4%EB%A3%B8_%EC%95%84%EC%9D%B4%ED%8F%B013_%EB%A6%AC%EB%B7%B0_PC_main.png',
    publishedAt: '2시간 전',
    heartCount: 8,
    price: '1000000',
    address: '당근1동',
    commentsCount: 3,
    description: '아이폰13 미개봉 신상품 팝니다.\n당근동 직거래 합니다\n흥정 사절.',
    category: '전자제품',
  ),
  Product(
    title: '후드티',
    author: '당근유저1',
    urlToImage:
        'https://assets.styleship.com/fila/data/productimages/b/3/FG2POD3A01X_LML.jpg',
    publishedAt: '2시간 전',
    heartCount: 8,
    price: '35000',
    address: '당근1동',
    commentsCount: 3,
    description: '안입는 후드티 팝니다. 2번 입음.\n택포, 반값 택배시 2000원 할인.',
    category: '의류',
  ),
  Product(
    title: '책',
    author: '당근유저3',
    urlToImage: 'https://image.yes24.com/goods/102347474/XL',
    publishedAt: '3시간 전',
    heartCount: 3,
    address: '당근2동',
    price: '18000',
    commentsCount: 1,
    description: '책 팔아요.\n택포, 반값 택배시 2000원 할인.',
    category: '서적',
  ),
  Product(
    title: '가디건',
    author: '당근유저4',
    address: '당근2동',
    urlToImage:
        'https://w.namu.la/s/3e00080c44c60cd00659e045518f847b4602ffc64e5f5a618f41df4ebb6a93a982efa60046c99d1d9b0a2fb15c69036a37ba5cb8f4226b3da379b1eb5538e7612c7abe86667435e43b64f8f086562def',
    publishedAt: '1일 전',
    heartCount: 0,
    price: '25000',
    commentsCount: 12,
    description: '사놓고 안입은 가디건 팝니다.\n연락주세요.',
    category: '의류',
  ),
  Product(
    title: '유럽 여행',
    author: '당근유저5',
    address: '당근1동',
    urlToImage: 'https://newsimg.sedaily.com/2020/12/01/1ZBIJQNGIG_1.jpg',
    publishedAt: '3일 전',
    heartCount: 4,
    price: '1500000',
    commentsCount: 11,
    description: '여행사 이벤트 중입니다.\n싸게 유럽여행 갈 수 있는 기회!\n연락주세요.',
    category: '기타',
  ),
  Product(
    title: '노트북 케이스 ',
    author: '당근유저4',
    address: '당근1동',
    urlToImage:
        'https://contents.sixshop.com/thumbnails/uploadedFiles/56465/product/image_1593347955364_1000.jpg',
    publishedAt: '1주일 전',
    heartCount: 7,
    price: '35000',
    commentsCount: 4,
    description: '사놓고 안입은 가디건 팝니다.\n연락주세요.',
    category: '잡화',
  ),
  Product(
    title: '맥북',
    author: '당근유저2',
    address: '당근2동',
    urlToImage:
        'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/mbp-spacegray-select-202011_GEO_KR?wid=904&hei=840&fmt=jpeg&qlt=80&.v=1632948895000',
    publishedAt: '5일 전',
    heartCount: 4,
    price: '115000',
    commentsCount: 0,
    description: '맥북 신형 팝니다.\n직거래 원하구요 흥정은 제발 하지 마세요.',
    category: '전자제품',
  ),
  Product(
    title: '아이패드',
    author: '당근유저5',
    address: '당근1동',
    urlToImage:
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_1.jpg?raw=true',
    publishedAt: '5일 전',
    heartCount: 8,
    price: '300000',
    commentsCount: 3,
    description: '아이패드 팔아요 연락주세요.',
    category: '전자제품',
  ),
];
