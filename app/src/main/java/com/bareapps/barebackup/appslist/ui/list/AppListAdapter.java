package com.bareapps.barebackup.appslist.ui.list;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;

import com.bareapps.barebackup.R;
import com.bareapps.barebackup.appslist.data.InstalledApp;

import java.util.ArrayList;
import java.util.List;

/** Lightweight adapter for the Apps list; backup actions remain outside this UI phase. */
final class AppListAdapter extends BaseAdapter {
    private final LayoutInflater inflater;
    private final Context context;
    private final List<InstalledApp> items = new ArrayList<>();

    AppListAdapter(Context context) {
        this.context = context;
        this.inflater = LayoutInflater.from(context);
    }

    void submit(List<InstalledApp> apps) {
        items.clear();
        if (apps != null) items.addAll(apps);
        notifyDataSetChanged();
    }

    @Override public int getCount() { return items.size(); }
    @Override public InstalledApp getItem(int position) { return items.get(position); }
    @Override public long getItemId(int position) { return getItem(position).getPackageName().hashCode(); }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View row = convertView;
        if (row == null) row = inflater.inflate(R.layout.app_list_item, parent, false);
        InstalledApp app = getItem(position);

        ImageView icon = row.findViewById(R.id.app_item_icon);
        TextView packageName = row.findViewById(R.id.app_item_package);
        TextView label = row.findViewById(R.id.app_item_label);
        TextView status = row.findViewById(R.id.app_item_status);
        TextView more = row.findViewById(R.id.app_item_more);

        Drawable drawable = app.loadIcon(context.getPackageManager());
        if (drawable != null) icon.setImageDrawable(drawable);
        else icon.setImageResource(android.R.drawable.sym_def_app_icon);
        packageName.setText(app.getPackageName());
        label.setText(app.getLabel());
        status.setText(app.getBackupStatus());
        more.setOnClickListener(view -> showActions(view, app));
        return row;
    }

    private void showActions(View anchor, InstalledApp app) {
        PopupMenu menu = new PopupMenu(context, anchor);
        menu.getMenu().add(0, 1, 0, "Open app");
        menu.getMenu().add(0, 2, 1, "App info");
        menu.getMenu().add(0, 3, 2, "Copy package name");
        menu.setOnMenuItemClickListener(item -> {
            try {
                if (item.getItemId() == 1) {
                    Intent launchIntent = context.getPackageManager()
                            .getLaunchIntentForPackage(app.getPackageName());
                    if (launchIntent == null) {
                        Toast.makeText(context, "This app cannot be launched directly.", Toast.LENGTH_SHORT).show();
                    } else {
                        context.startActivity(launchIntent);
                    }
                    return true;
                }
                if (item.getItemId() == 2) {
                    Intent detailsIntent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                            Uri.parse("package:" + app.getPackageName()));
                    context.startActivity(detailsIntent);
                    return true;
                }
                if (item.getItemId() == 3) {
                    ClipboardManager clipboard = (ClipboardManager)
                            context.getSystemService(Context.CLIPBOARD_SERVICE);
                    if (clipboard != null) {
                        clipboard.setPrimaryClip(ClipData.newPlainText("Package name", app.getPackageName()));
                        Toast.makeText(context, "Package name copied.", Toast.LENGTH_SHORT).show();
                    } else {
                        Toast.makeText(context, "Clipboard is unavailable.", Toast.LENGTH_SHORT).show();
                    }
                    return true;
                }
            } catch (RuntimeException error) {
                Toast.makeText(context, "Could not complete this action.", Toast.LENGTH_SHORT).show();
            }
            return false;
        });
        menu.show();
    }
}
