import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/cache/shared_manager.dart';
import 'package:flutter_full_learn/202/cache/user_cache/user_cache_manager.dart';

import 'shared_learn_view.dart';
import 'user_model.dart';

class SharedListChache extends StatefulWidget {
  const SharedListChache({super.key});

  @override
  State<SharedListChache> createState() => _SharedListChacheState();
}

class _SharedListChacheState extends LoadingStatefull<SharedListChache> {
  late final UserChacheManager userChacheManager;
  List<User> _users = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initalazeAndSave();
  }

  Future<void> initalazeAndSave() async {
    changeLoading();
    final SharedManager manager = SharedManager();
    await manager.init();
    userChacheManager = UserChacheManager(manager);
    _users = userChacheManager.getItems() ?? [];
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: isLoading
            ? CircularProgressIndicator(
                color: Theme.of(context).scaffoldBackgroundColor,
              )
            : null,
        actions: isLoading
            ? null
            : [
                IconButton(
                    onPressed: () async {
                      changeLoading();
                      await userChacheManager.saveItems(_users);
                    },
                    icon: const Icon(Icons.download_for_offline_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_circle_outline)),
              ],
      ),
      body: _UserListView(
        users: _users,
      ),
    );
  }
}

class _UserListView extends StatelessWidget {
  _UserListView({
    super.key,
    required this.users,
  });
  final List<User> users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
          title: Text(users[index].name ?? ''),
          subtitle: Text(users[index].description ?? ''),
          trailing: Text(
            users[index].url ?? '',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  decoration: TextDecoration.underline,
                ),
          ),
        ));
      },
    );
  }
}
