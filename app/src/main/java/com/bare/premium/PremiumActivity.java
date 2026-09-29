package com.bare.premium;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public class PremiumActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        findViewById(android.R.id.content).setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle("Premium")
                        .setMessage(R.string.p3_activity_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show());
    }
}
