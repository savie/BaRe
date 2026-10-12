package com.bareapps.barebackup.intro;

/**
 * Named replacement for the reference's obfuscated intro ViewModel/controller.
 * This records the intended onboarding stages without activating external actions.
 */
public final class IntroFlowController {
    public enum Step {
        ACCOUNT_SETUP,
        REQUIRED_PERMISSIONS,
        READY
    }

    private Step currentStep = Step.ACCOUNT_SETUP;

    public Step getCurrentStep() {
        return currentStep;
    }

    /** Explicitly called by future UI wiring; no automatic progression is enabled yet. */
    public void moveTo(Step step) {
        if (step == null) {
            throw new IllegalArgumentException("step must not be null");
        }
        currentStep = step;
    }
}