import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import '../../../common/services/logger.dart';import '../auth_bloc/auth_bloc.dart';import '../widgets/auth_widget.dart';import '../widgets/profile_widget.dart';class ProfileScreen extends StatefulWidget {  const ProfileScreen({super.key});  @override  State<ProfileScreen> createState() => _ProfileScreenState();}class _ProfileScreenState extends State<ProfileScreen> {  @override  void initState() {    context.read<AuthBloc>().add(AuthInitEvent());    super.initState();  }  @override  Widget build(BuildContext context) {    return Scaffold(      appBar: AppBar(        title: const Text(''),        backgroundColor: Theme.of(context).scaffoldBackgroundColor,        shadowColor: Colors.transparent,      ),      body: BlocConsumer<AuthBloc, AuthState>(        listener: (context, state) {          if (state is Error) {            ScaffoldMessenger.of(context)              ..hideCurrentSnackBar()              ..showSnackBar(                const SnackBar(                  content: Text('Error: '),                ),              );          } else if (state is AuthAutorized) {}        },        builder: (context, state)        {         return Column(            children: [              if (state is AuthUnautorized || state is AuthError) const AuthWidget(),              if (state is AuthLoading)                const Expanded(                  child: Center(                    child: CircularProgressIndicator(),                  ),                ),              if (state is AuthAutorized)                ProfileWidget(                  email: state.user?.email,                  profilePhoto: state.user?.photoURL,                  name: state.user?.displayName,                ),            ],          );        },      ),    );  }}