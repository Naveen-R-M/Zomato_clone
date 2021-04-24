import 'package:zomato_clone/export.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(top: 35, left: 15, right: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Lane 1, Area 1, City...',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.local_cafe_outlined,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 48,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Restaurant name, cuisine or a dish..',
                  hintStyle: TextStyle(letterSpacing: 1.2),
                  prefixIcon: Icon(
                    Icons.search,
                    color: MyColors.SPLASH_GRADIENT_2,
                  ),
                  contentPadding: EdgeInsets.all(5),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.black12,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.black12,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Pro',
                        style: TextStyle(
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Cuisines',
                        style: TextStyle(
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Rating 4.0+',
                        style: TextStyle(
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'MAX Safety',
                        style: TextStyle(
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Popularity',
                          style: TextStyle(
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: (width / 2) - 25,
                  height: 200,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/biryani.png',
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment(-1, 1),
                      end: Alignment(1, 1),
                      colors: [
                        MyColors.SPLASH_GRADIENT_1,
                        MyColors.SPLASH_GRADIENT_2,
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: (width / 2) - 25,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment(-1, 1),
                      end: Alignment(1, 1),
                      colors: [
                        MyColors.SPLASH_GRADIENT_1,
                        MyColors.SPLASH_GRADIENT_2,
                      ],
                    ),
                  ),
                  child: Image(
                    image: AssetImage(
                      'assets/images/thumbnail.png',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Eat what makes you happy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 1,
                fontFamily: 'Ubuntu',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://png.pngtree.com/png-vector/20210108/ourlarge/pngtree-cucumber-food-fruit-salad-png-image_2696600.jpg',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Healthy',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://www.pngitem.com/pimgs/m/151-1519906_chicken-biryani-top-view-hd-png-download.png',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Biryani',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://lh3.googleusercontent.com/proxy/Fg12FUcVWIByo6unbzpa3sB872BE199fkv6aWgN2Uxc6bef9Em48TSKjyWumXHy0bcW7XGxSUjsfu9jss7pjc6fi7reSKWPGXDV5Y8d9Z1zIH9zCuNw-8K7Feg6_AFXUrzy-PQ-m-NX_Lqo',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Chicken',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/f/f4/Egg_Poriyal.JPG',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Poriyal',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://zaikazabardast.files.wordpress.com/2012/02/p1110164.jpg',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Parotta',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://www.pngitem.com/pimgs/m/219-2190755_transparent-pizza-pizza-top-view-png-png-download.png',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Pizza',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Burger',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://i.ytimg.com/vi/vEr1JfRrt7E/maxresdefault.jpg',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Kushka',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: width,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Center(
                child: Text(
                  'see more',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '200 restaurants around you',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 20,
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    fit: BoxFit.cover,
                    width: width,
                    height: 170,
                    image: NetworkImage(
                      'https://i.ytimg.com/vi/vEr1JfRrt7E/maxresdefault.jpg',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'A1 Diner',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            wordSpacing: 2,
                            fontSize: 18,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'South Indian, Biryani',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black38,
                            letterSpacing: 1,
                            fontSize: 14,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    fit: BoxFit.cover,
                    width: width,
                    height: 170,
                    image: NetworkImage(
                      'https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Star Restaurant',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            wordSpacing: 2,
                            fontSize: 18,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Burger, Fast Food',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black38,
                            letterSpacing: 1,
                            fontSize: 14,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

/* 
Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'biryani',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                    Text(
                      'saturdays',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 27,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                    Text(
                      '\ntoday needs to be \nthe spiciest',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ],
                ),
*/
