package org.swiftapps.swiftbackup.appslist;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import org.swiftapps.swiftbackup.detail.DetailActivity;

/** App inventory surface; package discovery is deferred to a later pass. */
public final class AppListActivity extends Activity {
    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        String[] entries = {"Installed applications", "System applications", "User applications"};
        ListView list = new ListView(this);
        list.setAdapter(new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, entries));
        list.setOnItemClickListener((parent, view, position, id) ->
            startActivity(new Intent(this, DetailActivity.class)
                .putExtra("item", entries[position])));
        setContentView(list);
    }
}
