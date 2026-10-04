package com.bare.settings;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioGroup;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;
import com.bare.core.state.LocalState;
import com.bare.settings.model.AppSettings;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.slider.Slider;

public final class MultipleBackupsActivity extends AppCompatActivity {
    private static final String STATE_STRATEGY = "state_multiple_backups_strategy";
    private static final String EXTRA_STRATEGY = "extra_multiple_backups_strategy";

    private MaterialCardView singleCard;
    private MaterialCardView datedCard;
    private MaterialCardView conditionalCard;
    private Slider datedSlider;
    private Slider conditionalSlider;
    private TextView datedCount;
    private TextView conditionalCount;
    private RadioGroup conditionGroup;

    private MultipleBackupStrategy strategy;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.multiple_backups_strategy_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.multiple_backups_strategy);
        }

        if (savedInstanceState != null && savedInstanceState.containsKey(STATE_STRATEGY)) {
            MultipleBackupStrategy restored =
                    savedInstanceState.getParcelable(STATE_STRATEGY);
            strategy = restored != null ? restored : loadStrategy();
        } else {
            MultipleBackupStrategy fromIntent =
                    getIntent().getParcelableExtra(EXTRA_STRATEGY);
            strategy = fromIntent != null ? fromIntent : loadStrategy();
        }

        bindViews();
        bindInteractions();
        render();
    }

    private void bindViews() {
        singleCard = findViewById(R.id.mbs_single_item);
        datedCard = findViewById(R.id.mbs_dated_item);
        conditionalCard = findViewById(R.id.mbs_conditional_item);

        datedSlider = datedCard.findViewById(R.id.slider_num_of_backups);
        conditionalSlider = conditionalCard.findViewById(R.id.slider_num_of_backups);
        datedCount = datedCard.findViewById(R.id.tv_num_of_backups);
        conditionalCount = conditionalCard.findViewById(R.id.tv_num_of_backups);
        conditionGroup = conditionalCard.findViewById(R.id.rg_conditions);

        bindCardText(singleCard, R.string.multiple_backups_strategy_single_title,
                R.string.multiple_backups_strategy_single_description);
        bindCardText(datedCard, R.string.multiple_backups_strategy_dated_title,
                R.string.multiple_backups_strategy_dated_description);
        bindCardText(conditionalCard, R.string.multiple_backups_strategy_conditional_title,
                R.string.multiple_backups_strategy_conditional_description);
    }

    private void bindCardText(View card, int titleRes, int subtitleRes) {
        ((TextView) card.findViewById(R.id.tv_title)).setText(titleRes);
        ((TextView) card.findViewById(R.id.tv_subtitle)).setText(subtitleRes);
    }

    private void bindInteractions() {
        singleCard.setOnClickListener(v -> {
            strategy = MultipleBackupStrategy.singleBackup();
            render();
        });
        datedCard.setOnClickListener(v -> {
            strategy = MultipleBackupStrategy.datedBackups(Math.round(datedSlider.getValue()));
            render();
        });
        conditionalCard.setOnClickListener(v -> {
            strategy = MultipleBackupStrategy.conditionalBackup(
                    Math.round(conditionalSlider.getValue()), selectedCondition());
            render();
        });

        Slider.OnChangeListener sliderListener = (slider, value, fromUser) -> {
            int count = Math.round(value);
            if (slider == datedSlider) {
                datedCount.setText(String.valueOf(count));
                if (strategy.getType() == MultipleBackupStrategy.TYPE_DATED_BACKUPS) {
                    strategy = MultipleBackupStrategy.datedBackups(count);
                    updateSelectionOnly();
                }
            } else {
                conditionalCount.setText(String.valueOf(count));
                if (strategy.getType() == MultipleBackupStrategy.TYPE_CONDITIONAL_BACKUP) {
                    strategy = MultipleBackupStrategy.conditionalBackup(count, selectedCondition());
                    updateSelectionOnly();
                }
            }
        };
        datedSlider.addOnChangeListener(sliderListener);
        conditionalSlider.addOnChangeListener(sliderListener);

        conditionGroup.setOnCheckedChangeListener((group, checkedId) -> {
            if (strategy.getType() == MultipleBackupStrategy.TYPE_CONDITIONAL_BACKUP
                    && checkedId != -1) {
                strategy = MultipleBackupStrategy.conditionalBackup(
                        Math.round(conditionalSlider.getValue()), selectedCondition());
                updateSelectionOnly();
            }
        });

        findViewById(R.id.btn_action).setOnClickListener(v -> applyStrategy());
    }

    private int selectedCondition() {
        int checkedId = conditionGroup.getCheckedRadioButtonId();
        if (checkedId == R.id.rb_data_changes) {
            return MultipleBackupStrategy.CONDITION_DATA_CHANGES;
        }
        if (checkedId == R.id.rb_any_change) {
            return MultipleBackupStrategy.CONDITION_ANY_CHANGES;
        }
        return MultipleBackupStrategy.CONDITION_APK_CHANGES;
    }

    private void render() {
        int count = strategy.getMaxNumOfBackups();
        if (strategy.getType() == MultipleBackupStrategy.TYPE_DATED_BACKUPS) {
            datedSlider.setValue(MultipleBackupStrategy.clampCount(count));
        } else if (strategy.getType() == MultipleBackupStrategy.TYPE_CONDITIONAL_BACKUP) {
            conditionalSlider.setValue(MultipleBackupStrategy.clampCount(count));
        }

        datedCount.setText(String.valueOf(Math.max(2, Math.round(datedSlider.getValue()))));
        conditionalCount.setText(String.valueOf(Math.max(2, Math.round(conditionalSlider.getValue()))));

        switch (strategy.getCondition()) {
            case MultipleBackupStrategy.CONDITION_DATA_CHANGES:
                conditionGroup.check(R.id.rb_data_changes);
                break;
            case MultipleBackupStrategy.CONDITION_ANY_CHANGES:
                conditionGroup.check(R.id.rb_any_change);
                break;
            default:
                conditionGroup.check(R.id.rb_apk_changes);
                break;
        }

        updateSelectionOnly();
    }

    private void updateSelectionOnly() {
        boolean single = strategy.getType() == MultipleBackupStrategy.TYPE_SINGLE_BACKUP;
        boolean dated = strategy.getType() == MultipleBackupStrategy.TYPE_DATED_BACKUPS;
        boolean conditional = strategy.getType() == MultipleBackupStrategy.TYPE_CONDITIONAL_BACKUP;

        datedCard.findViewById(R.id.container_slider).setVisibility(dated ? View.VISIBLE : View.GONE);
        conditionalCard.findViewById(R.id.container_slider).setVisibility(conditional ? View.VISIBLE : View.GONE);
        conditionalCard.findViewById(R.id.container_conditions).setVisibility(conditional ? View.VISIBLE : View.GONE);

        setSelected(singleCard, single);
        setSelected(datedCard, dated);
        setSelected(conditionalCard, conditional);
    }

    private void setSelected(MaterialCardView card, boolean selected) {
        card.setChecked(selected);
        card.setStrokeWidth(selected ? 3 : 0);
    }

    private MultipleBackupStrategy loadStrategy() {
        AppSettings settings = new SettingsRepository(new LocalState(this)).read();
        MultipleBackupStrategy configured = settings.getAppsMultipleBackupStrategy();
        return configured != null ? configured : MultipleBackupStrategy.singleBackup();
    }

    private void applyStrategy() {
        SettingsRepository repository = new SettingsRepository(new LocalState(this));
        AppSettings settings = repository.read();
        settings.setAppsMultipleBackupStrategy(strategy);
        repository.save(settings);

        setResult(RESULT_OK, new Intent().putExtra(EXTRA_STRATEGY, strategy));
        finish();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putParcelable(STATE_STRATEGY, strategy);
        super.onSaveInstanceState(outState);
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
