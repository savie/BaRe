package com.bare.home;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.bare.R;
import com.bare.home.data.ScheduleViewModel;

public final class ScheduleFragment extends Fragment {
    private ScheduleViewModel model;

    @Nullable @Override public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle state) {
        return inflater.inflate(R.layout.home_schedule_fragment, container, false);
    }

    @Override public void onViewCreated(@NonNull View view, @Nullable Bundle state) {
        model = new ViewModelProvider(this).get(ScheduleViewModel.class);
        LinearLayout list = view.findViewById(R.id.schedule_list);
        model.getSchedules().observe(getViewLifecycleOwner(), items -> {
            list.removeAllViews();
            if (items.isEmpty()) {
                TextView empty = (TextView) getLayoutInflater().inflate(
                        R.layout.home_schedule_item, list, false);
                empty.setText(R.string.no_schedules_added_message);
                list.addView(empty);
            } else {
                for (ScheduleViewModel.ScheduleItem item : items) {
                    TextView row = (TextView) getLayoutInflater().inflate(
                            R.layout.home_schedule_item, list, false);
                    row.setText(item.title + "\n" + item.summary);
                    list.addView(row);
                }
            }
        });
    }
}