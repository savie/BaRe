package com.bareapps.barebackup.intro;

import android.app.Activity;
import android.app.AlertDialog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

import com.bareapps.barebackup.R;

/** Reference-style account choice prompt shown before starting Google OAuth. */
public final class GoogleSignInPrompt {
    public interface Listener {
        void onGoogleSignIn();
        void onContinueWithoutAccount();
    }

    private GoogleSignInPrompt() {}

    public static AlertDialog show(Activity activity, Listener listener) {
        View content = LayoutInflater.from(activity).inflate(R.layout.intro_google_signin_prompt, null, false);
        AlertDialog dialog = new AlertDialog.Builder(activity)
                .setView(content)
                .create();
        content.findViewById(R.id.prompt_google_sign_in).setOnClickListener(v -> {
            dialog.dismiss();
            listener.onGoogleSignIn();
        });
        content.findViewById(R.id.prompt_continue_without_account).setOnClickListener(v -> {
            dialog.dismiss();
            listener.onContinueWithoutAccount();
        });
        dialog.setOnShowListener(ignored -> {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setBackgroundDrawableResource(android.R.color.transparent);
                window.addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
                WindowManager.LayoutParams params = window.getAttributes();
                params.dimAmount = 0.65f;
                window.setAttributes(params);
                int width = (int) (activity.getResources().getDisplayMetrics().widthPixels
                        - 2 * activity.getResources().getDisplayMetrics().density * 28);
                window.setLayout(width, WindowManager.LayoutParams.WRAP_CONTENT);
            }
        });
        dialog.show();
        return dialog;
    }
}
