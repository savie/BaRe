package com.bareapps.barebackup.appslist.ui.list;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.bareapps.barebackup.R;
import com.bareapps.barebackup.appslist.data.InstalledApp;

import java.util.ArrayList;
import java.util.List;

/** Lightweight adapter for the Apps list; each row only presents package metadata. */
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

        Drawable drawable = app.loadIcon(context.getPackageManager());
        if (drawable != null) icon.setImageDrawable(drawable);
        else icon.setImageResource(android.R.drawable.sym_def_app_icon);
        packageName.setText(app.getPackageName());
        label.setText(app.getLabel());
        status.setText(app.getBackupStatus());
        return row;
    }
}
