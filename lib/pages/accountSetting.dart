import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),

                child: Column(
                  children: [

                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 55,
                            backgroundImage:
                                AssetImage("assets/images/profile.png"),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Klik untuk mengubah foto",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 25),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nama",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 5),
                    _buildThinTextField("Nama"),

                    SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "NIS",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 5),
                    _buildThinTextField("NIS"),

                    SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Rombel",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 5),
                    _buildThinTextField("Rombel"),

                    SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Rayon",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 5),
                    _buildThinTextField("Rayon"),
                  ],
                ),
              ),

              SizedBox(height: 25),


              _buildChangePasswordCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildThinTextField(String hint) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey.shade100,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey, width: 0.3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue, width: 0.5),
        ),
      ),
    );
  }

  Widget _buildChangePasswordCard() {
    return StatefulBuilder(
      builder: (context, setState) {
        bool oldPass = true;
        bool newPass = true;

        return Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ubah Kata Sandi",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),

              Text(
                "Kata Sandi Lama",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),

              TextField(
                obscureText: oldPass,
                decoration: InputDecoration(
                  hintText: "Masukkan password",
                  filled: true,
                  fillColor: Colors.grey.shade100,

                  suffixIcon: IconButton(
                    icon: Icon(
                      oldPass ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() => oldPass = !oldPass);
                    },
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 0.3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue, width: 0.5),
                  ),
                ),
              ),

              SizedBox(height: 5),
              Text(
                "Masukkan kata sandi lama anda",
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),

              SizedBox(height: 20),

              Text(
                "Kata Sandi Baru",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),

              TextField(
                obscureText: newPass,
                decoration: InputDecoration(
                  hintText: "Masukkan password",
                  filled: true,
                  fillColor: Colors.grey.shade100,

                  suffixIcon: IconButton(
                    icon: Icon(
                      newPass ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() => newPass = !newPass);
                    },
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 0.3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue, width: 0.5),
                  ),
                ),
              ),

              SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0A3BAA),
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Simpan Perubahan",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}