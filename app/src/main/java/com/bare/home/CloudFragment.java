package com.bare.home;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import com.bare.R;
import com.bare.cloud.connect.common.CloudConnectActivity;
import com.bare.cloud.diagnostics.CloudDiagnosticsActivity;
import com.bare.cloud.orphans.CloudOrphanCleanerActivity;
import com.bare.home.data.CloudViewModel;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class CloudFragment extends Fragment {
 private CloudViewModel model;
 @Nullable @Override public View onCreateView(@NonNull LayoutInflater inflater,@Nullable ViewGroup container,@Nullable Bundle state){return inflater.inflate(R.layout.home_cloud_fragment,container,false);}
 @Override public void onViewCreated(@NonNull View view,@Nullable Bundle state){
  model=new ViewModelProvider(this).get(CloudViewModel.class);
  model.setState(CloudViewModel.State.DRIVE_NOT_CONNECTED);
  View storage=view.findViewById(R.id.cloud_info_card_storage);if(storage!=null){
   View connect=storage.findViewById(R.id.btn_disconnect);if(connect!=null)connect.setOnClickListener(v->startActivity(new Intent(requireContext(),CloudConnectActivity.class)));
   View dots=storage.findViewById(R.id.iv_save_settings);if(dots!=null)dots.setOnClickListener(v->showCloudActions());
  }
  View warning=view.findViewById(R.id.cloud_info_card_warning);if(warning!=null){
   View understand=warning.findViewById(R.id.btn_i_understand);if(understand!=null)understand.setOnClickListener(v->warning.setVisibility(View.GONE));
  }
  View active=view.findViewById(R.id.cloud_info_card_active_folder);if(active!=null){
   View delete=active.findViewById(R.id.btn_delete_active_tag);if(delete!=null)delete.setOnClickListener(v->cloudBoundary(R.string.delete_active_tag));
  }
 }
 private void showCloudActions(){
  new MaterialAlertDialogBuilder(requireContext()).setItems(new String[]{getString(R.string.cloud_diagnostics),getString(R.string.cloud_orphan_cleaner),getString(R.string.connect_cloud_account)},(d,w)->{
   if(w==0)startActivity(new Intent(requireContext(),CloudDiagnosticsActivity.class));
   else if(w==1)startActivity(new Intent(requireContext(),CloudOrphanCleanerActivity.class));
   else startActivity(new Intent(requireContext(),CloudConnectActivity.class));
  }).show();
 }
 private void cloudBoundary(int title){new MaterialAlertDialogBuilder(requireContext()).setTitle(title).setMessage(R.string.p3_cloud_boundary).setPositiveButton(R.string.close,null).show();}
}