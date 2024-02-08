import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oblivion/enums/form_editable_types.dart';
import 'package:oblivion/widgets/inputeditable.dart';
import 'package:oblivion/widgets/switcheditable.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SettingsScreen> createState() {
    return _HomePage();
  }
}

class _HomePage extends ConsumerState<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.grey[800]),
          ),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Column(
          children: [
            //endpoint
            InputEditable(
              showTitleOnDialog: true,
              description: 'Can be IPv4, IPv6 or a domain',
              icon: Icons.edit_note_sharp,
              title: 'Endpoint',
              defaultValue: '127.0.0.1',
              dialogType: FormEditableTypes.string,
              value: '127.0.0.1',
              hint: 'Can be IPv4, IPv6 or a domain',
              onChanged: (String) {},
            ),
            const Divider(),

            //port
            InputEditable(
              showTitleOnDialog: true,
              description: 'Tunnel Port',
              icon: Icons.network_locked,
              title: 'Port',
              defaultValue: '8086',
              dialogType: FormEditableTypes.string,
              value: '8086',
              hint: 'Change tunnel port',
              onChanged: (String) {},
            ),
            const Divider(),
            //lan
            SwitchEditable(
                icon: Icons.lan,
                title: 'Connect From LAN',
                description: 'Allows connection from LAN',
                value: false,
                onChanged: (String) {}),
            const Divider(),

            //psiphon
            SwitchEditable(
                icon: Icons.vpn_key,
                title: 'Psiphon',
                description: 'Use Psiphon to change IP',
                value: false,
                onChanged: (String) {}),
            const Divider(),

            //license
            InputEditable(
              showTitleOnDialog: true,
              description: 'License key',
              icon: Icons.workspace_premium,
              title: 'License',
              defaultValue: '1234',
              dialogType: FormEditableTypes.string,
              value: '',
              hint: 'Enter License Key',
              onChanged: (String) {},
            ),
            const Divider(),

            //gool
            SwitchEditable(
                icon: Icons.route_outlined,
                title: 'Gool',
                description: 'Enable or Disable Gool',
                value: false,
                onChanged: (String) {}),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
