import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<MovieModel> display_list = List.from(main_movies_list);

  void updateLlist(String value) {
    setState(() {
      display_list = main_movies_list
          .where(
              (e) => e.movie_name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 227, 227),
      body: Padding(
        padding: const EdgeInsets.only(top: 55),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text('Search Page',
                  style: GoogleFonts.openSans(fontSize: 30)),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) => updateLlist(value),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Movies',
                  hintStyle: TextStyle(color: Colors.grey.shade700),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: display_list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.only(left: 30, right: 30),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          '${display_list[index].movie_poster}',
                          width: 75,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        display_list[index].movie_name!,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),

                      subtitle: Text(
                        '${display_list[index].movie_year}',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      trailing: Text(
                        '${display_list[index]..movie_rating}',
                        style: TextStyle(
                            color: Color.fromARGB(255, 128, 123, 23)),
                      ),

                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
