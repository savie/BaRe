package com.bare.contributor;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class ContributorRegActivity extends AppCompatActivity{
 @Override protected void onCreate(@Nullable Bundle state){super.onCreate(state);setContentView(R.layout.contributor_reg_activity);findViewById(R.id.tv_status).setVisibility(android.view.View.VISIBLE);findViewById(R.id.btn_action).setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle(R.string.save_details).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show());}
}