package com.bare.contributor;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;
import com.bare.contributor.data.ContributorRegistrationData;
import com.google.android.material.button.ExtendedFloatingActionButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputEditText;

import java.util.StringJoiner;

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

    /**
     * F33 presentation surface. F91 supplies contributor registration state.
     */
    public void onRemoteDetails(@Nullable ContributorRegistrationData registration) {
        if (registration == null) {
            statusView.setText(R.string.p3_contributor_boundary);
            basicDetailsView.setText(R.string.p3_contributor_remote_details_pending);
            crowdinContainer.setVisibility(View.GONE);
            return;
        }

        statusView.setText(
                registration.status == null || registration.status.isEmpty()
                        ? R.string.p3_contributor_boundary
                        : registration.status);

        StringJoiner details = new StringJoiner("\n\n");
        appendDetail(details, "Name", registration.name);
        appendDetail(details, "Registration type", displayType(registration.type));

        if (registration.type == ContributorRegistrationData.Type.TRANSLATOR
                && registration.locales != null
                && !registration.locales.trim().isEmpty()) {
            appendDetail(details, "Languages", registration.locales);
        }

        basicDetailsView.setText(
                details.length() == 0
                        ? R.string.p3_contributor_remote_details_pending
                        : details.toString());

        boolean translator =
                registration.type == ContributorRegistrationData.Type.TRANSLATOR;
        crowdinContainer.setVisibility(translator ? View.VISIBLE : View.GONE);

        telegramView.setText(valueOrEmpty(registration.telegramId));
        crowdinView.setText(valueOrEmpty(registration.crowdinId));
        paypalView.setText(valueOrEmpty(registration.paypalId));
    }

    private static String displayType(ContributorRegistrationData.Type type) {
        return type == ContributorRegistrationData.Type.TRANSLATOR
                ? "Translator"
                : "Community Helper";
    }

    private static void appendDetail(StringJoiner details, String label, String value) {
        if (value != null && !value.trim().isEmpty()) {
            details.add(label + "\n" + value);
        }
    }

    private static String valueOrEmpty(String value) {
        return value == null ? "" : value;
    }

    private void showSaveBoundary() {
        // Reference submits through the contributor state owner.
        // F91 owns validation/persistence; remote execution is not fabricated here.
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.save_details)
                .setMessage(R.string.p3_contributor_boundary)
                .setPositiveButton(R.string.close, null)
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
