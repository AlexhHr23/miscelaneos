import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelaneos/presentation/providers/providers.dart';

class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permissions Screen'),
      ),
      body: _PermissionsView(),
    );
  }
}


class _PermissionsView extends ConsumerWidget {
  const _PermissionsView();

  @override
  Widget build(BuildContext context, ref) {

    final permissions = ref.watch(permissionsProvider);
  
    return ListView(
      children: [
        CheckboxListTile(
          value: permissions.cameraGranted,
          title: const Text('Cámara'), 
          subtitle:  Text('${permissions.camera}'), 
          onChanged: (value) {
            ref.read(permissionsProvider.notifier).requestCameraAcess();
          },
        ),
        CheckboxListTile(
          value: permissions.photoLibraryGranted,
          title: const Text('Galeria de fotos'), 
          subtitle:  Text('${permissions.photoLibrary}'), 
          onChanged: (value) {
            ref.read(permissionsProvider.notifier).requestGaleryAcess();
          },
        ),
        CheckboxListTile(
          value: permissions.locationWhenInUseGranted,
          title: const Text('Location'), 
          subtitle:  Text('${permissions.location}'), 
          onChanged: (value) {
            ref.read(permissionsProvider.notifier).requestLocationAcess();
          },
        ),
        CheckboxListTile(
          value: permissions.sensorsGranted,
          title: const Text('Sensors'), 
          subtitle:  Text('${permissions.sensors}'), 
          onChanged: (value) {
            ref.read(permissionsProvider.notifier).requestSensorsAcess();
          },
        ),
      ],
    );
  }
}