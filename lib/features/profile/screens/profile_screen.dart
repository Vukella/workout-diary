
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/theme/app_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _UserCard(),
          const SizedBox(height: 24),
          _SectionHeader(title: 'PREFERENCES'),
          const SizedBox(height: 8),
          _PreferencesCard(),
          const SizedBox(height: 24),
          _SectionHeader(title: 'LIBRARIES'),
          const SizedBox(height: 8),
          _LibrariesCard(),
          const SizedBox(height: 24),
          _SectionHeader(title: 'APP'),
          const SizedBox(height: 8),
          _AppCard(),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
        color: AppTheme.onSurfaceMuted,
        letterSpacing: 1.2,
      ),
    );
  }
}

class _UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: AppTheme.accent,
              child: Text(
                'N',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nemanja',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 2),
                Text(
                  'Personal tracker · since Oct 2026',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppTheme.onSurfaceMuted),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _PreferencesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: const Text('Weight unit'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _UnitChip(label: 'kg', selected: true),
                const SizedBox(width: 8),
                _UnitChip(label: 'lb', selected: false),
              ],
            ),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),
          ListTile(
            title: const Text('First day of week'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Monday',
                    style: TextStyle(color: AppTheme.onSurfaceMuted)),
                const Icon(Icons.chevron_right, color: AppTheme.onSurfaceMuted),
              ],
            ),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),
          SwitchListTile(
            title: const Text('Rest timer'),
            value: false,
            onChanged: null, // TODO: wire to DataStore
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),
          ListTile(
            title: Text('Theme',
                style: TextStyle(color: AppTheme.onSurfaceMuted)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _ComingSoonChip(),
                const SizedBox(width: 8),
                Text('Dark',
                    style: TextStyle(color: AppTheme.onSurfaceMuted)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UnitChip extends StatelessWidget {
  final String label;
  final bool selected;
  const _UnitChip({required this.label, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: selected ? AppTheme.accent : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : AppTheme.onSurfaceMuted,
          fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
    );
  }
}

class _ComingSoonChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: AppTheme.onSurfaceMuted),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        'SOON',
        style: Theme.of(context)
            .textTheme
            .labelSmall
            ?.copyWith(color: AppTheme.onSurfaceMuted),
      ),
    );
  }
}

class _LibrariesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.tune, color: AppTheme.accent),
            title: const Text('Exercise Library'),
            trailing: const Icon(Icons.chevron_right,
                color: AppTheme.onSurfaceMuted),
            onTap: () => context.push('/exercises'),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),
          ListTile(
            leading: const Icon(Icons.settings_input_component,
                color: AppTheme.accent),
            title: const Text('Machine Library'),
            trailing: const Icon(Icons.chevron_right,
                color: AppTheme.onSurfaceMuted),
            onTap: () {}, // TODO: machine library not built yet
          ),
        ],
      ),
    );
  }
}

class _AppCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text('Version'),
        trailing: Text(
          '0.1.0',
          style: TextStyle(color: AppTheme.onSurfaceMuted),
        ),
      ),
    );
  }
}