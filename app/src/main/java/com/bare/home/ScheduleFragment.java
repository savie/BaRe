package com.bare.home;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.home.data.ScheduleViewModel;

import java.util.ArrayList;
import java.util.List;

public final class ScheduleFragment extends Fragment {
    private ScheduleViewModel model;
    private ScheduleAdapter adapter;

    @Nullable @Override public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle state) {
        return inflater.inflate(R.layout.home_schedule_fragment, container, false);
    }

    @Override public void onViewCreated(@NonNull View view, @Nullable Bundle state) {
        model = new ViewModelProvider(this).get(ScheduleViewModel.class);
        RecyclerView list = view.findViewById(R.id.rv_schedules);
        adapter = new ScheduleAdapter();
        list.setAdapter(adapter);

        View add = view.findViewById(R.id.btn_add_first_schedule);
        if (add != null) add.setOnClickListener(v -> showP3ScheduleBoundary());

        model.getSchedules().observe(getViewLifecycleOwner(), items -> {
            adapter.submit(items);
        });
    }

    private void showP3ScheduleBoundary() {
        new com.google.android.material.dialog.MaterialAlertDialogBuilder(requireContext())
                .setTitle(R.string.new_schedule)
                .setMessage(R.string.p3_schedule_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private final class ScheduleAdapter extends RecyclerView.Adapter<ScheduleAdapter.Holder> {
        private final List<ScheduleViewModel.ScheduleItem> items = new ArrayList<>();

        void submit(List<ScheduleViewModel.ScheduleItem> value) {
            items.clear();
            if (value != null) items.addAll(value);
            notifyDataSetChanged();
        }

        @NonNull @Override public Holder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            TextView row = (TextView) getLayoutInflater().inflate(R.layout.home_schedule_item, parent, false);
            return new Holder(row);
        }

        @Override public void onBindViewHolder(@NonNull Holder holder, int position) {
            ScheduleViewModel.ScheduleItem item = items.get(position);
            holder.text.setText(item.title + "\n" + item.summary);
        }

        @Override public int getItemCount() {
            return items.size();
        }

        final class Holder extends RecyclerView.ViewHolder {
            final TextView text;
            Holder(TextView text) {
                super(text);
                this.text = text;
            }
        }
    }
}