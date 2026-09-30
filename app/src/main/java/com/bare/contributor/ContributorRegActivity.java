package com.bare.contributor;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;
import com.google.android.material.button.ExtendedFloatingActionButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputEditText;

public final class ContributorRegActivity extends AppCompatActivity {
    private TextView statusView;
    private TextView basicDetailsView;
    private TextInputEditText telegramView;
    private TextInputEditText crowdinView;
    private TextInputEditText paypalView;
    private View crowdinContainer;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.contributor_reg_activity);

        statusView = findViewById(R.id.tv_status);
        basicDetailsView = findViewById(R.id.tv_basic_details);
        telegramView = findViewById(R.id.et_telegram_handle);
        crowdinView = findViewById(R.id.et_crowdin_username);
        paypalView = findViewById(R.id.et_paypal);
        crowdinContainer = findViewById(R.id.til_crowdin_username);

        statusView.setText(R.string.p3_contributor_boundary);
        basicDetailsView.setText(R.string.p3_contributor_remote_details_pending);

        if (state != null) {
            telegramView.setText(state.getString("telegram"));
            crowdinView.setText(state.getString("crowdin"));
            paypalView.setText(state.getString("paypal"));
            crowdinContainer.setVisibility(
                    state.getBoolean("crowdin_visible", false) ? View.VISIBLE : View.GONE);
        }

        ExtendedFloatingActionButton saveButton = findViewById(R.id.btn_action);
        saveButton.setOnClickListener(v -> showSaveBoundary());
    }

    private void showSaveBoundary() {
        // Reference submits ContributorRegistration through its ViewModel/coroutine.
        // Keep the observable P3 result boundary without fabricating remote persistence.
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.save_details)
                .setMessage(R.string.p3_contributor_boundary)
                .setPositiveButton(R.string.close, null)
                .setOnDismissListener(d -> {
                    setResult(RESULT_OK);
                })
                .show();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putString("telegram", textOf(telegramView));
        outState.putString("crowdin", textOf(crowdinView));
        outState.putString("paypal", textOf(paypalView));
        outState.putBoolean("crowdin_visible", crowdinContainer.getVisibility() == View.VISIBLE);
        super.onSaveInstanceState(outState);
    }

    private static String textOf(TextInputEditText view) {
        return view.getText() == null ? "" : view.getText().toString();
    }
}
