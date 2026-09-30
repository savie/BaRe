package com.bare.appslist.ui.labels;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputEditText;

import java.util.ArrayList;
import java.util.List;

public final class LabelEditActivity extends AppCompatActivity {
    private static final String STATE_NAME = "label_name";
    private static final String STATE_COLOR = "label_color";
    private static final String EXTRA_LABEL_ID = "label_id";
    private static final String EXTRA_LABEL_NAME = "label_name";
    private static final String EXTRA_LABEL_COLOR = "label_color";
    private static final String RESULT_LABEL_ID = "label_id";
    private static final String RESULT_LABEL_NAME = "label_name";
    private static final String RESULT_LABEL_COLOR = "label_color";

    private TextInputEditText name;
    private TextView preview;
    private int selectedColor;
    private boolean editing;

    private static final String[][] PALETTES = {
        {"#F44336","#E91E63","#9C27B0","#673AB7","#3F51B5","#2196F3","#03A9F4","#00BCD4","#009688","#4CAF50","#8BC34A","#CDDC39","#FFEB3B","#FF9800","#FF5722"},
        {"#FFEBEE","#FCE4EC","#F3E5F5","#EDE7F6","#E8EAF6","#E3F2FD","#E1F5FE","#E0F7FA","#E0F2F1","#E8F5E9","#F1F8E9","#F9FBE7","#FFFDE7","#FFF3E0","#FBE9E7"},
        {"#EF5350","#EC407A","#AB47BC","#7E57C2","#5C6BC0","#42A5F5","#29B6F6","#26C6DA","#26A69A","#66BB6A","#9CCC65","#D4E157","#FFEE58","#FFA726","#FF7043"}
    };

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.label_edit_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        editing = getIntent() != null && getIntent().hasExtra("label_edit");
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle(
                    editing ? R.string.edit_label : R.string.create_new_label);
        }

        name = findViewById(R.id.et_label_name);
        preview = findViewById(R.id.label_preview).findViewById(R.id.tv_title);
        selectedColor = state != null
                ? state.getInt(STATE_COLOR, Color.parseColor("#2196F3"))
                : getIntent() != null
                ? getIntent().getIntExtra(EXTRA_LABEL_COLOR, Color.parseColor("#2196F3"))
                : Color.parseColor("#2196F3");

        if (state != null) {
            name.setText(state.getString(STATE_NAME, ""));
        } else if (getIntent() != null) {
            name.setText(getIntent().getStringExtra(EXTRA_LABEL_NAME));
        }

        name.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {
                preview.setText(s != null && s.length() > 0
                        ? s : getString(R.string.app_labels));
            }
            @Override public void afterTextChanged(android.text.Editable s) {}
        });

        setupColorPickers();
        findViewById(R.id.iv_edit).setOnClickListener(v -> showAppsBoundary());
        findViewById(R.id.btn_cancel).setOnClickListener(v -> cancel());
        findViewById(R.id.btn_save).setOnClickListener(v -> confirmSave());

        if (name.getText() != null) {
            preview.setText(name.getText().length() > 0
                    ? name.getText() : getString(R.string.app_labels));
        }
        renderColor();
    }

    private void setupColorPickers() {
        RecyclerView colors = findViewById(R.id.rv_label_colors);
        RecyclerView shades = findViewById(R.id.rv_label_shades);
        colors.setLayoutManager(new LinearLayoutManager(this, RecyclerView.HORIZONTAL, false));
        shades.setLayoutManager(new LinearLayoutManager(this, RecyclerView.HORIZONTAL, false));

        colors.setAdapter(new ColorAdapter(primaryColors(), color -> {
            selectedColor = color;
            renderColor();
        }));
        shades.setAdapter(new ColorAdapter(intColors(
                "#ECEFF1","#CFD8DC","#B0BEC5","#90A4AE","#78909C",
                "#607D8B","#546E7A","#455A64","#37474F","#263238"
        ), color -> {
            selectedColor = color;
            renderColor();
        }));
    }

    private List<Integer> intColors(String... values) {
        List<Integer> result = new ArrayList<>();
        for (String value : values) result.add(Color.parseColor(value));
        return result;
    }

    private List<Integer> primaryColors() {
        List<Integer> result = new ArrayList<>();
        for (String color : PALETTES[0]) result.add(Color.parseColor(color));
        return result;
    }

    private void renderColor() {
        View colorCard = findViewById(R.id.label_preview);
        if (colorCard instanceof MaterialCardView) {
            ((MaterialCardView) colorCard).setCardBackgroundColor(selectedColor);
        }
    }

    private void showAppsBoundary() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.select_apps)
                .setMessage(R.string.app_labels_description)
                .setNegativeButton(R.string.close, null)
                .setPositiveButton(android.R.string.ok, null)
                .show();
    }

    private void confirmSave() {
        String value = name.getText() == null ? "" : name.getText().toString().trim();
        android.content.Intent result = new android.content.Intent();
        if (getIntent() != null && getIntent().hasExtra(EXTRA_LABEL_ID)) {
            result.putExtra(RESULT_LABEL_ID, getIntent().getStringExtra(EXTRA_LABEL_ID));
        }
        result.putExtra(RESULT_LABEL_NAME, value);
        result.putExtra(RESULT_LABEL_COLOR, selectedColor);
        setResult(Activity.RESULT_OK, result);
        finish();
    }

    private void confirmDelete() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.delete_label)
                .setMessage(R.string.sure_to_proceed)
                .setNegativeButton(R.string.cancel, null)
                .setPositiveButton(android.R.string.ok, (d, which) -> {
                    android.content.Intent result = new android.content.Intent();
                    if (getIntent() != null && getIntent().hasExtra(EXTRA_LABEL_ID)) {
                        result.putExtra(RESULT_LABEL_ID, getIntent().getStringExtra(EXTRA_LABEL_ID));
                    }
                    result.putExtra("label_deleted", true);
                    setResult(Activity.RESULT_OK, result);
                    finish();
                })
                .show();
    }

    private void cancel() {
        setResult(Activity.RESULT_CANCELED);
        finish();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putString(STATE_NAME, name.getText() == null ? "" : name.getText().toString());
        outState.putInt(STATE_COLOR, selectedColor);
        super.onSaveInstanceState(outState);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_label_edit, menu);
        MenuItem delete = menu.findItem(R.id.action_delete_label);
        if (delete != null) delete.setVisible(editing);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_delete_label) {
            confirmDelete();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public boolean onSupportNavigateUp() {
        cancel();
        return true;
    }

    private static final class ColorAdapter extends RecyclerView.Adapter<ColorAdapter.Holder> {
        interface OnColorSelected { void accept(int color); }

        private final List<Integer> colors;
        private final OnColorSelected listener;

        ColorAdapter(List<Integer> colors, OnColorSelected listener) {
            this.colors = colors;
            this.listener = listener;
        }

        @Override public Holder onCreateViewHolder(android.view.ViewGroup parent, int type) {
            MaterialCardView card = new MaterialCardView(parent.getContext());
            card.setLayoutParams(new RecyclerView.LayoutParams(
                    dp(parent, 32), dp(parent, 32)));
            card.setRadius(dp(parent, 16));
            card.setCardElevation(0);
            card.setStrokeWidth(dp(parent, 1));
            return new Holder(card);
        }

        @Override public void onBindViewHolder(Holder holder, int position) {
            int color = colors.get(position);
            holder.card.setCardBackgroundColor(color);
            holder.card.setOnClickListener(v -> listener.accept(color));
        }

        @Override public int getItemCount() { return colors.size(); }

        private static int dp(android.view.View view, int value) {
            return Math.round(value * view.getResources().getDisplayMetrics().density);
        }

        static final class Holder extends RecyclerView.ViewHolder {
            final MaterialCardView card;
            Holder(MaterialCardView card) {
                super(card);
                this.card = card;
            }
        }
    }
}
