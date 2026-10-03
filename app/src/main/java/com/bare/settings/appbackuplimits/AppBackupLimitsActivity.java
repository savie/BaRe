package com.bare.settings.appbackuplimits;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;
import com.google.android.material.textfield.TextInputLayout;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

public final class AppBackupLimitsActivity extends AppCompatActivity {
    public static final String EXTRA_LIMITS = "extra_limits";
    private final Map<String, AppBackupLimitItem> limits = new LinkedHashMap<>();

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.app_backup_limits_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        ArrayList<AppBackupLimitItem> initial = state != null
                ? state.getParcelableArrayList(EXTRA_LIMITS)
                : getIntent().getParcelableArrayListExtra(EXTRA_LIMITS);

        if (initial == null || initial.isEmpty()) {
            String part = getIntent().getStringExtra("app_part");
            if (part != null && !part.isEmpty()) {
                initial = new ArrayList<>();
                initial.add(new AppBackupLimitItem(part, null, null));
            } else {
                initial = AppBackupLimitItem.defaultItems();
            }
        }

        if(state==null && getIntent().getParcelableArrayListExtra(EXTRA_LIMITS)==null) initial=loadPersisted(initial);
        bindInitial(initial);
    }

    private ArrayList<AppBackupLimitItem> loadPersisted(ArrayList<AppBackupLimitItem> defaults){ java.util.ArrayList<AppBackupLimitItem> out=new java.util.ArrayList<>(); android.content.SharedPreferences p=getSharedPreferences("settings",MODE_PRIVATE); for(AppBackupLimitItem d:defaults){String raw=p.getString(d.getPart(),null);if(raw==null){out.add(d);continue;}try{org.json.JSONObject o=new org.json.JSONObject(raw);Long l=o.isNull("localLimitMBs")?null:o.optLong("localLimitMBs");Long cl=o.isNull("cloudLimitMBs")?null:o.optLong("cloudLimitMBs");out.add(new AppBackupLimitItem(d.getPart(),l,cl));}catch(Exception e){out.add(d);}} return out; }
    private void persist(){android.content.SharedPreferences.Editor e=getSharedPreferences("settings",MODE_PRIVATE).edit();for(AppBackupLimitItem x:limits.values()){try{if(x.isValid()&&x.hasLimits())e.putString(x.getPart(),new org.json.JSONObject().put("localLimitMBs",x.getLocalLimitMBs()==null?org.json.JSONObject.NULL:x.getLocalLimitMBs()).put("cloudLimitMBs",x.getCloudLimitMBs()==null?org.json.JSONObject.NULL:x.getCloudLimitMBs()).toString());else e.remove(x.getPart());}catch(Exception ignored){}}e.apply();}

    private void bindInitial(ArrayList<AppBackupLimitItem> initial) {
        limits.clear();
        for (AppBackupLimitItem item : initial) {
            limits.put(item.getPart(), item);
        }

        bindPart(R.id.container_data, "DATA", R.string.data);
        bindPart(R.id.container_extdata, "EXTDATA", R.string.external_data);
        bindPart(R.id.container_media, "MEDIA", R.string.media);
        bindPart(R.id.container_expansion, "EXPANSION", R.string.expansion);
    }

    private void bindPart(int containerId, String part, int titleRes) {
        View container = findViewById(containerId);
        AppBackupLimitItem item = limits.get(part);
        if (item == null) {
            container.setVisibility(View.GONE);
            return;
        }

        container.setVisibility(View.VISIBLE);
        ((android.widget.TextView) container.findViewById(R.id.tv_part_title)).setText(titleRes);

        bindLimit(
                (TextInputLayout) container.findViewById(R.id.til_local_limit),
                (EditText) container.findViewById(R.id.et_local_limit),
                item.getLocalLimitMBs()
        );
        bindLimit(
                (TextInputLayout) container.findViewById(R.id.til_cloud_limit),
                (EditText) container.findViewById(R.id.et_cloud_limit),
                item.getCloudLimitMBs()
        );
    }

    private void bindLimit(TextInputLayout layout, EditText editText, Long value) {
        layout.setHint(layout.getId() == R.id.til_local_limit
                ? R.string.local_backup_limit
                : R.string.cloud_backup_limit);
        layout.setSuffixText("MB");
        layout.setEndIconMode(TextInputLayout.END_ICON_CLEAR_TEXT);

        editText.setText(value != null && value > 0 ? String.valueOf(value) : "");
        editText.setSelectAllOnFocus(true);
        editText.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) { }
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {
                updateLimit(layout.getId() == R.id.til_local_limit, editText, layout);
            }
            @Override public void afterTextChanged(Editable s) { }
        });
    }

    private void updateLimit(boolean local, EditText editText, TextInputLayout layout) {
        View container = (View) layout.getParent().getParent();
        String part = partForContainer(container);
        if (part == null) {
            return;
        }

        AppBackupLimitItem old = limits.get(part);
        if (old == null) {
            return;
        }

        Long value = parsePositiveLong(editText.getText() != null ? editText.getText().toString() : null);
        limits.put(part, local
                ? old.copy(old.getPart(), value, old.getCloudLimitMBs())
                : old.copy(old.getPart(), old.getLocalLimitMBs(), value));
    }

    private String partForContainer(View container) {
        if (container.getId() == R.id.container_data) return "DATA";
        if (container.getId() == R.id.container_extdata) return "EXTDATA";
        if (container.getId() == R.id.container_media) return "MEDIA";
        if (container.getId() == R.id.container_expansion) return "EXPANSION";
        return null;
    }

    private static Long parsePositiveLong(String raw) {
        if (raw == null || raw.trim().isEmpty()) {
            return null;
        }
        try {
            long value = Long.parseLong(raw.trim());
            return value > 0 ? value : null;
        } catch (NumberFormatException ignored) {
            return null;
        }
    }

    private ArrayList<AppBackupLimitItem> currentItems() {
        return new ArrayList<>(limits.values());
    }

    private void returnLimits() {
        persist();
        Intent result = new Intent(this, AppBackupLimitsActivity.class);
        result.putParcelableArrayListExtra(EXTRA_LIMITS, currentItems());
        setResult(RESULT_OK, result);
    }

    @Override
    public void onBackPressed() {
        returnLimits();
        super.onBackPressed();
    }

    @Override
    public boolean onSupportNavigateUp() {
        returnLimits();
        finish();
        return true;
    }

    @Override
    protected void onSaveInstanceState(Bundle state) {
        state.putParcelableArrayList(EXTRA_LIMITS, currentItems());
        super.onSaveInstanceState(state);
    }
}
