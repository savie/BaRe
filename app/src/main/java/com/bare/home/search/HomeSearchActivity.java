package com.bare.home.search;

import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.content.Context;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;

/**
 * P3 navigation/UI surface for the Reference home search screen.
 *
 * Search/index/data semantics remain a P4 handoff. This Activity owns the
 * Reference-shaped screen structure, result-surface containers, input state,
 * keyboard/back handling and close transition.
 */
public final class HomeSearchActivity extends AppCompatActivity {
    private int[] sourceBounds;
    private EditText query;
    private ImageButton clear;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        if (getIntent() != null) {
            sourceBounds = getIntent().getIntArrayExtra("source_bounds");
        }

        setContentView(R.layout.home_search_activity);

        androidx.appcompat.widget.Toolbar toolbar = findViewById(R.id.search_toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        toolbar.setNavigationOnClickListener(v -> closeSearch(true));

        query = findViewById(R.id.et_search);
        clear = findViewById(R.id.btn_clear);
        clear.setOnClickListener(v -> {
            query.setText("");
            query.requestFocus();
        });

        RecyclerView shortcuts = findViewById(R.id.rv_home_search_shortcuts);
        RecyclerView quickActions = findViewById(R.id.rv_home_search_quick_actions);
        RecyclerView apps = findViewById(R.id.rv_home_search_apps);
        RecyclerView folders = findViewById(R.id.rv_home_search_folders);

        // P3 owns the result surfaces and their presentation containers.
        // Data adapters/indexing are intentionally deferred to P4.
        shortcuts.setLayoutManager(new LinearLayoutManager(this, RecyclerView.HORIZONTAL, false));
        quickActions.setLayoutManager(new LinearLayoutManager(this));
        apps.setLayoutManager(new LinearLayoutManager(this));
        folders.setLayoutManager(new LinearLayoutManager(this));

        shortcuts.setItemAnimator(null);
        quickActions.setItemAnimator(null);
        apps.setItemAnimator(null);
        folders.setItemAnimator(null);

        TextView systemToggle = findViewById(R.id.btn_home_search_apps_system_toggle);
        systemToggle.setOnClickListener(v -> {
            // P3 owns the visible toggle affordance. Filtering/system-app
            // inventory is a P4 data contract and is not faked here.
        });

        query.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {
                clear.setVisibility(s != null && s.length() > 0 ? View.VISIBLE : View.GONE);
            }

            @Override public void afterTextChanged(android.text.Editable s) {}
        });

        query.requestFocus();
        query.postDelayed(() -> {
            InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
            if (imm != null) {
                imm.showSoftInput(query, InputMethodManager.SHOW_IMPLICIT);
            }
        }, 120);
    }

    private void hideKeyboard() {
        if (query == null) return;
        InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
        if (imm != null) {
            imm.hideSoftInputFromWindow(query.getWindowToken(), 0);
        }
    }

    private void closeSearch(boolean animated) {
        if (isFinishing()) return;
        hideKeyboard();
        finish();
        if (animated) {
            overridePendingTransition(R.anim.home_search_close_enter, R.anim.home_search_close_exit);
        } else {
            overridePendingTransition(0, 0);
        }
    }

    @Override
    public void onBackPressed() {
        closeSearch(true);
    }

    @Override
    public boolean onSupportNavigateUp() {
        closeSearch(true);
        return true;
    }
}
