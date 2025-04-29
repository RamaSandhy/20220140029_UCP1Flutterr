import 'package:flutter/material.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF5F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                 Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(height: 20),
                const Icon(
                  Icons.arrow_drop_up,
                  size: 100,
                  color: Colors.black,
                ),
                const SizedBox(height: 10),
                const Text(
                  'DAFTAR AKUN BARU',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 const SizedBox(height: 30),
                  const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nama Lengkap',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: TextField(
                    controller: fullNameController,
                    decoration: const InputDecoration(
                      hintText: 'Nama Lengkap',
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                             child: TextField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                hintText: 'Email',
                                prefixIcon: Icon(Icons.email),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(vertical: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                      Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'No HP',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                           const SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: TextField(
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                hintText: 'No HP',
                                prefixIcon: Icon(Icons.phone),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(vertical: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                 Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300),
                            ), 
                            child: TextField(
                              controller: passwordController,
                              obscureText: _obscurePassword,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscurePassword = !_obscurePassword;
                                    });
                                  },
                                  child: Icon(
                                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                                  ),
                                ),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Konfirmasi Password',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: TextField(
                              controller: confirmPasswordController,
                              obscureText: _obscureConfirmPassword,
                              decoration: InputDecoration(
                                hintText: 'Konfirmasi',
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureConfirmPassword = !_obscureConfirmPassword;
                                    });
                                  },                      
                                  child: Icon(
                                    _obscureConfirmPassword ? Icons.visibility_off : Icons.visibility,
                                  ),
                                ),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),      
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(builder: (context) => const LoginPage())
                      );
                    },   
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF5722),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),   
                    child: const Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),


              
