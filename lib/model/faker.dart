class User {
  final String firstName;
  final String lastName;
  final String location;
  final String avater;
  User(this.firstName, this.lastName, this.location, this.avater);
}

class Offers {
  double buyOffer;
  double rentOffer;
  Offers(this.buyOffer, this.rentOffer);
}

class Apartment {
  final String name;
  final String media;
  Apartment(
    this.name,
    this.media,
  );
}

class Faker {
  static User getUser = User(
    'Habeeb',
    'Olorunishola',
    'Abuja, Nigeria',
    'https://avatars.githubusercontent.com/u/22020160?v=4',
  );

  static Offers getOffers = Offers(1034, 2212);

  static List<Apartment> getApartments = [
    Apartment('Musada Luxury Hotels and Suites',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/332592078.jpg?k=07651d442b1c32d06b9071223a9c7a4fd1a3e3de6b980d230bfc117dc963f068&o=&hp=1'),
    Apartment('Naya\'s Apartment: A Lush Ambience (Katampe, Abuja)',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/165047882.jpg?k=a0447579ead28dfcc10e968463d4cc68479010d2a93932d5a672cd321ccfbe02&o=&hp=1'),
    Apartment(
        'Summerset Continental Hotel Maitama by T E L E HospitalityOpens in new window',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/167538047.jpg?k=55cb164959eb0a5a77408b39756be47fa0d1ec52402629f57a13dcd464b73165&o=&hp=1'),
    Apartment('The Grosvenor Suites Gwarinpa AbujaOpens in new window',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/78418775.jpg?k=0a12a00eac59c723363a84fe0bfaa5e3c1c98fe02b55102bd97465f8eda24817&o=&hp=1'),
    Apartment('Aurora Smart Residence, Wuse 2, Abuja',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/490790293.jpg?k=8dc054ae48863fb000bcbeda6b4722eb360f857f9aef82878dd46a0b8f14e8a7&o=&hp=1'),
    Apartment('Integral Consults Apartment',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/490790303.jpg?k=70161a5ae08a2a14d10cc2a453545ce340f60e32e89d69e55681af6ae8c7917f&o=&hp=1'),
    Apartment('MayFair Hotel Maitama Abuja',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/574127983.jpg?k=85a49fd07a4656214f9217e774e6ba78f184f4ffb8f712dee78b6eb5db95be07&o=&hp=1'),
    Apartment('Tree House Boutique Hotel',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/512381328.jpg?k=062523e4f25202643571548bbc33ba1e4611ab9cd05fc364880468ddb8865ff5&o=&hp=1'),
    Apartment('No2. MayFair Hotel Maitama Abuja',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/256378913.jpg?k=9a3b9cca1622f2922a2bc1309fa9c20f027de9837afa165adcd009da40ca5e7b&o=&hp=1'),
    Apartment('17. Tree House Boutique Hotel',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/529673812.jpg?k=e6387dfc487ce0085a99163605952ba99fb56778bb765b614653b55e8730da31&o=&hp=1'),
    Apartment('Lagos Marriott Hotel Ikeja',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/439499370.jpg?k=e92116706e0d039d9ef927bfb6f3ee51d76f9e6a90c9787687dc3a1dfdcb0d0e&o=&hp=1'),
    Apartment('Park Inn by Radisson, Lagos Victoria Island',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/511726082.jpg?k=235fc5f22cf49034c018cbbfc51cd5f8aadd444409b3d915b88131daeb45f98c&o=&hp=1'),
    Apartment('BON Hotel Lekki Residence',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/511818239.jpg?k=63fb2d1de6ce7529c353b5c8b19de930e52826e2f8aab3f56c3122b8416a91f8&o=&hp=1'),
    Apartment('Musada Luxury Hotels and Suites',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/332592078.jpg?k=07651d442b1c32d06b9071223a9c7a4fd1a3e3de6b980d230bfc117dc963f068&o=&hp=1'),
    Apartment('Naya\'s Apartment: A Lush Ambience (Katampe, Abuja)',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/165047882.jpg?k=a0447579ead28dfcc10e968463d4cc68479010d2a93932d5a672cd321ccfbe02&o=&hp=1'),
    Apartment(
        'Summerset Continental Hotel Maitama by T E L E HospitalityOpens in new window',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/167538047.jpg?k=55cb164959eb0a5a77408b39756be47fa0d1ec52402629f57a13dcd464b73165&o=&hp=1'),
    Apartment('The Grosvenor Suites Gwarinpa AbujaOpens in new window',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/78418775.jpg?k=0a12a00eac59c723363a84fe0bfaa5e3c1c98fe02b55102bd97465f8eda24817&o=&hp=1'),
    Apartment('Aurora Smart Residence, Wuse 2, Abuja',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/490790293.jpg?k=8dc054ae48863fb000bcbeda6b4722eb360f857f9aef82878dd46a0b8f14e8a7&o=&hp=1'),
    Apartment('Integral Consults Apartment',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/490790303.jpg?k=70161a5ae08a2a14d10cc2a453545ce340f60e32e89d69e55681af6ae8c7917f&o=&hp=1'),
    Apartment('MayFair Hotel Maitama Abuja',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/574127983.jpg?k=85a49fd07a4656214f9217e774e6ba78f184f4ffb8f712dee78b6eb5db95be07&o=&hp=1'),
    Apartment('Tree House Boutique Hotel',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/512381328.jpg?k=062523e4f25202643571548bbc33ba1e4611ab9cd05fc364880468ddb8865ff5&o=&hp=1'),
    Apartment('No2. MayFair Hotel Maitama Abuja',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/256378913.jpg?k=9a3b9cca1622f2922a2bc1309fa9c20f027de9837afa165adcd009da40ca5e7b&o=&hp=1'),
    Apartment('17. Tree House Boutique Hotel',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/529673812.jpg?k=e6387dfc487ce0085a99163605952ba99fb56778bb765b614653b55e8730da31&o=&hp=1'),
    Apartment('Lagos Marriott Hotel Ikeja',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/439499370.jpg?k=e92116706e0d039d9ef927bfb6f3ee51d76f9e6a90c9787687dc3a1dfdcb0d0e&o=&hp=1'),
    Apartment('Park Inn by Radisson, Lagos Victoria Island',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/511726082.jpg?k=235fc5f22cf49034c018cbbfc51cd5f8aadd444409b3d915b88131daeb45f98c&o=&hp=1'),
    Apartment('BON Hotel Lekki Residence',
        'https://cf2.bstatic.com/xdata/images/hotel/max1024x768/511818239.jpg?k=63fb2d1de6ce7529c353b5c8b19de930e52826e2f8aab3f56c3122b8416a91f8&o=&hp=1'),
  ];
}
