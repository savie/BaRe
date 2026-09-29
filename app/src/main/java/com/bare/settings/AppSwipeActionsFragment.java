package com.bare.settings;

import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.preference.PreferenceManager;

import com.bare.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;

public final class AppSwipeActionsFragment extends Fragment {
    private static final String RIGHT_KEY = "app_list_right_swipe_actions";
    private static final String LEFT_KEY = "app_list_left_swipe_actions";

    private enum Action {
        LAUNCH("launch", R.string.launch, R.drawable.ic_app, 0),
        ENABLE_DISABLE("enable_disable", R.string.enable_disable_apps, R.drawable.ic_app, 0),
        UNINSTALL("uninstall", R.string.uninstall, R.drawable.ic_app, 1),
        FORCE_STOP("force_stop", R.string.force_stop, R.drawable.ic_app, 0),
        PLAY_STORE("play_store", R.string.play_store, R.drawable.ic_app, 0),
        CLEAR_DATA("clear_data", R.string.clear_data, R.drawable.ic_app, 1),
        APP_INFO("app_info", R.string.app_info, R.drawable.ic_app, 0),
        SHARE_APK("share_apk", R.string.share_apk, R.drawable.ic_app, 0);

        final String id;
        final int titleRes;
        final int iconRes;
        final int tone;

        Action(String id, int titleRes, int iconRes, int tone) {
            this.id = id;
            this.titleRes = titleRes;
            this.iconRes = iconRes;
            this.tone = tone;
        }

        static Action fromId(String id) {
            if (id == null) return null;
            for (Action action : values()) {
                if (action.id.equals(id)) return action;
            }
            return null;
        }
    }

    private static final class Selection {
        Action primary;
        Action secondary;

        Selection(Action primary, Action secondary) {
            this.primary = primary;
            this.secondary = secondary;
        }

        List<Action> uniqueActions() {
            LinkedHashSet<Action> set = new LinkedHashSet<>();
            if (primary != null) set.add(primary);
            if (secondary != null) set.add(secondary);
            return new ArrayList<>(set);
        }
    }

    private SharedPreferences prefs;
    private Selection right;
    private Selection left;

    private TextView rightPrimaryValue;
    private TextView rightSecondaryValue;
    private TextView leftPrimaryValue;
    private TextView leftSecondaryValue;
    private LinearLayout rightPrimaryAction;
    private LinearLayout leftPrimaryAction;
    private MaterialButton rightPreviewPrimary;
    private MaterialButton rightPreviewSecondary;
    private MaterialButton leftPreviewPrimary;
    private MaterialButton leftPreviewSecondary;
    private FrameLayout rightPreviewContent;
    private FrameLayout leftPreviewContent;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent,
                             @Nullable Bundle state) {
        return inflater.inflate(R.layout.app_swipe_actions_fragment, parent, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle state) {
        super.onViewCreated(view, state);
        prefs = PreferenceManager.getDefaultSharedPreferences(requireContext());
        right = read(RIGHT_KEY, defaultSelection(true));
        left = read(LEFT_KEY, defaultSelection(false));

        rightPrimaryValue = view.findViewById(R.id.right_primary_value);
        rightSecondaryValue = view.findViewById(R.id.right_secondary_value);
        leftPrimaryValue = view.findViewById(R.id.left_primary_value);
        leftSecondaryValue = view.findViewById(R.id.left_secondary_value);
        rightPrimaryAction = view.findViewById(R.id.right_primary_action);
        leftPrimaryAction = view.findViewById(R.id.left_primary_action);
        rightPreviewPrimary = view.findViewById(R.id.right_preview_primary);
        rightPreviewSecondary = view.findViewById(R.id.right_preview_secondary);
        leftPreviewPrimary = view.findViewById(R.id.left_preview_primary);
        leftPreviewSecondary = view.findViewById(R.id.left_preview_secondary);
        rightPreviewContent = view.findViewById(R.id.right_preview_content);
        leftPreviewContent = view.findViewById(R.id.left_preview_content);

        rightPrimaryAction.setOnClickListener(v -> choose(true, true));
        view.findViewById(R.id.right_secondary_action).setOnClickListener(v -> choose(true, false));
        leftPrimaryAction.setOnClickListener(v -> choose(false, true));
        view.findViewById(R.id.left_secondary_action).setOnClickListener(v -> choose(false, false));

        render();
    }

    private Selection defaultSelection(boolean rightSide) {
        return rightSide ? new Selection(Action.LAUNCH, null)
                : new Selection(Action.UNINSTALL, null);
    }

    private Selection read(String key, Selection fallback) {
        String encoded = prefs.getString(key, null);
        if (encoded == null || encoded.trim().isEmpty()) return fallback;
        if ("none".equals(encoded.trim())) return new Selection(null, null);

        LinkedHashSet<Action> actions = new LinkedHashSet<>();
        for (String token : encoded.split(",")) {
            Action action = Action.fromId(token.trim());
            if (action != null) actions.add(action);
        }
        if (actions.isEmpty()) return fallback;

        Action primary = actions.iterator().next();
        Action secondary = null;
        if (actions.size() > 1) {
            java.util.Iterator<Action> iterator = actions.iterator();
            iterator.next();
            secondary = iterator.next();
        }
        return new Selection(primary, secondary);
    }

    private void persist(String key, Selection selection) {
        List<Action> actions = selection.uniqueActions();
        if (actions.isEmpty()) {
            prefs.edit().putString(key, "none").apply();
            return;
        }
        StringBuilder value = new StringBuilder();
        for (Action action : actions) {
            if (value.length() > 0) value.append(',');
            value.append(action.id);
        }
        prefs.edit().putString(key, value.toString()).apply();
    }

    private void choose(boolean rightSide, boolean primarySlot) {
        Selection current = rightSide ? right : left;
        Action currentAction = primarySlot ? current.primary : current.secondary;
        String[] labels = new String[Action.values().length + 1];
        labels[0] = getString(R.string.none);
        for (int i = 0; i < Action.values().length; i++) {
            labels[i + 1] = getString(Action.values()[i].titleRes);
        }

        int checked = currentAction == null ? 0 : Arrays.asList(Action.values()).indexOf(currentAction) + 1;
        new MaterialAlertDialogBuilder(requireContext())
                .setTitle(primarySlot ? R.string.primary_action : R.string.secondary_action)
                .setSingleChoiceItems(labels, checked, (dialog, which) -> {
                    Action selected = which == 0 ? null : Action.values()[which - 1];
                    applySelection(current, primarySlot, selected);
                    if (rightSide) {
                        right = current;
                        persist(RIGHT_KEY, right);
                    } else {
                        left = current;
                        persist(LEFT_KEY, left);
                    }
                    render();
                    dialog.dismiss();
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private void applySelection(Selection selection, boolean primarySlot, Action selected) {
        Action oldPrimary = selection.primary;
        Action oldSecondary = selection.secondary;

        if (primarySlot) {
            if (selected == null) {
                selection.primary = null;
                selection.secondary = null;
            } else if (selected == oldSecondary) {
                selection.primary = selected;
                selection.secondary = oldPrimary;
            } else {
                selection.primary = selected;
            }
        } else {
            if (selected == null) {
                selection.primary = null;
                selection.secondary = null;
            } else if (oldPrimary == null) {
                selection.primary = selected;
                selection.secondary = null;
            } else if (selected != oldPrimary) {
                selection.secondary = selected;
            } else if (oldSecondary != null) {
                selection.primary = oldSecondary;
                selection.secondary = selected;
            }
        }
    }

    private void render() {
        renderSide(right, rightPrimaryValue, rightSecondaryValue, rightPrimaryAction,
                rightPreviewPrimary, rightPreviewSecondary, rightPreviewContent, false);
        renderSide(left, leftPrimaryValue, leftSecondaryValue, leftPrimaryAction,
                leftPreviewPrimary, leftPreviewSecondary, leftPreviewContent, true);
    }

    private void renderSide(Selection selection, TextView primaryValue, TextView secondaryValue,
                             LinearLayout primaryRow, MaterialButton previewPrimary,
                             MaterialButton previewSecondary, FrameLayout content, boolean leftSide) {
        primaryValue.setText(title(selection.primary));
        secondaryValue.setText(title(selection.secondary));
        primaryRow.setEnabled(selection.primary != null);
        primaryRow.setAlpha(selection.primary == null ? 0.5f : 1f);

        configurePreviewButton(previewPrimary, selection.primary);
        configurePreviewButton(previewSecondary, selection.secondary);

        int actionCount = selection.uniqueActions().size();
        int actionWidthPx = (int) (64 * getResources().getDisplayMetrics().density + 0.5f);
        ViewGroup.LayoutParams params = content.getLayoutParams();
        if (params instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams margin = (ViewGroup.MarginLayoutParams) params;
            if (leftSide) {
                margin.setMarginStart(0);
                margin.setMarginEnd(actionCount * actionWidthPx);
            } else {
                margin.setMarginStart(actionCount * actionWidthPx);
                margin.setMarginEnd(0);
            }
            content.setLayoutParams(margin);
        }
    }

    private String title(Action action) {
        return action == null ? getString(R.string.none) : getString(action.titleRes);
    }

    private void configurePreviewButton(MaterialButton button, Action action) {
        button.setText(action == null ? "" : title(action));
        button.setIcon(action == null ? null : requireContext().getDrawable(action.iconRes));
        if (action == null) {
            button.setVisibility(View.INVISIBLE);
            return;
        }
        button.setVisibility(View.VISIBLE);
        int color = com.google.android.material.color.MaterialColors.getColor(
                button,
                action.tone == 1
                        ? com.google.android.material.R.attr.colorError
                        : com.google.android.material.R.attr.colorPrimary);
        button.setIconTint(ColorStateList.valueOf(color));
    }

    public void resetToReferenceDefaults() {
        if (prefs == null) {
            prefs = PreferenceManager.getDefaultSharedPreferences(requireContext());
        }
        right = defaultSelection(true);
        left = defaultSelection(false);
        persist(RIGHT_KEY, right);
        persist(LEFT_KEY, left);
        render();
    }
}
