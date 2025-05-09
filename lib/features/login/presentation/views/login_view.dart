import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  // Controllers to retrieve text from text fields
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Focus nodes for managing focus
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  // Form key for validation
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 24, top: 100, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    'Welcome to Bookly!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2F2A5F),
                    ),
                  ),
                  subtitle: Text(
                    'Dive back into your reading world.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6A6F73).withOpacity(0.7),
                    ),
                  ),
                ),
                SizedBox(height: 35),

                ListTile(
                  title: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2F2A5F),
                    ),
                  ),

                  subtitle: SizedBox(
                    width: 327,
                    height: 48,
                    child: TextFormField(
                      controller: _emailController,
                      focusNode: _emailFocusNode,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Color(0xffD4CFDA),
                        ),
                        labelText: 'you@example.com',
                        labelStyle: TextStyle(
                          color: Color(0xffACA0BB),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),

                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE6DFE9)),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Color(0xffE6DFE9),
                          ), // Inactive state
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Color(0xffE6DFE9),
                          ), // On focus
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                        if (!emailRegex.hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                  ),
                ),

                // Email Text Field

                // Password Text Field
                ListTile(
                  title: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2F2A5F),
                    ),
                  ),
                  subtitle: SizedBox(
                    width: 327,
                    height: 48,
                    child: TextFormField(
                      controller: _passwordController,
                      focusNode: _passwordFocusNode,
                      obscureText: true, // Hide password text
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color(0xffD4CFDA),
                        ),
                        labelText: 'Your password',
                        labelStyle: TextStyle(
                          color: Color(0xffACA0BB),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),

                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE6DFE9)),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Color(0xffE6DFE9),
                          ), // Inactive state
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Color(0xffE6DFE9),
                          ), // On focus
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 19),
                Text(
                  'Forgot Your Password?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff7A68FF),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 327,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Navigate to next screen
                      context.go('/LoginView');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff7A68FF),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to Bookly? ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6A6F73), // Static grey text
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.go('/Splash1View');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, // Removes default padding
                        minimumSize: Size(0, 0), // Avoid extra space
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7A68FF),
                        ),
                      ),
                    ),
                  ],
                ),
                // TextButton(
                //   onPressed: () {
                //     // TODO: Skip to login
                //     context.go('/Splash1View');
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 70),
                //     child: Text(
                //       'New to bookly? Sign Up',
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.w500,
                //         color: Color(0xff7A68FF),
                //       ),
                //     ),
                //   ),
                // ),

                // Login Button
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Login action
}
