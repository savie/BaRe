package com.bareapps.barebackup.intro;

import android.app.Activity;
import android.os.Bundle;

import com.bareapps.barebackup.R;

/**
 * Intro/onboarding surface. The screens and copy mirror the reference flow;
 * sign-in and permission actions intentionally remain disabled until their
 * integrations are implemented and verified.
 */
public final class IntroActivity extends Activity {
    private IntroFlowController flowController;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        flowController = new IntroFlowController();
        setContentView(R.layout.intro_activity);
    }
}