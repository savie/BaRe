package com.bare.home.search;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;

/**
 * P3 navigation shell for the Reference home search surface.
 *
 * Search/index semantics remain evidence-bound to the Reference implementation;
 * this Activity intentionally provides only the screen, back flow and input shell.
 */
public final class HomeSearchActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.home_search_activity);

        androidx.appcompat.widget.Toolbar toolbar = findViewById(R.id.search_toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        toolbar.setNavigationOnClickListener(v -> finish());

        EditText query = findViewById(R.id.et_search);
        ImageButton clear = findViewById(R.id.btn_clear);
        clear.setOnClickListener(v -> query.setText(""));

        query.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {
                clear.setVisibility(s != null && s.length() > 0 ? View.VISIBLE : View.GONE);
            }
            @Override public void afterTextChanged(android.text.Editable s) {}
        });
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
