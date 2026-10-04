package com.bare.detail;
import android.app.Activity; import android.content.Intent; import android.os.Bundle; import android.os.Parcelable; import android.widget.TextView; import androidx.annotation.Nullable; import androidx.appcompat.app.AppCompatActivity; import androidx.appcompat.widget.Toolbar; import com.bare.R; import com.bare.appslist.engine.AppLocalBackupEngine; import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class DetailActivity extends AppCompatActivity {
 private static final String APP_PARCEL="APP_PARCEL"; private static final String SHORTCUT="detail_launched_from_shortcut"; private static final String PACKAGE_NAME="package_name"; private Parcelable appParcel; private String packageName;
 private final java.util.LinkedHashSet<RestorePart> selectedParts=new java.util.LinkedHashSet<>();
 @Override protected void onCreate(@Nullable Bundle state){ super.onCreate(state); setContentView(R.layout.detail_activity); Toolbar t=findViewById(R.id.toolbar); setSupportActionBar(t); if(getSupportActionBar()!=null){getSupportActionBar().setDisplayHomeAsUpEnabled(true);getSupportActionBar().setTitle(R.string.app_detail);} appParcel=state!=null?state.getParcelable(APP_PARCEL):getIntent().getParcelableExtra(APP_PARCEL); packageName=state!=null?state.getString(PACKAGE_NAME):getIntent().getStringExtra(PACKAGE_NAME); if(state!=null){java.util.ArrayList<String> saved=state.getStringArrayList("restore_parts"); if(saved!=null)for(String value:saved)try{selectedParts.add(RestorePart.valueOf(value));}catch(IllegalArgumentException ignored){}} if(appParcel==null&&packageName==null&&!getIntent().getBooleanExtra(SHORTCUT,false)){finish();return;} if(packageName!=null){try{android.content.pm.PackageInfo pi=getPackageManager().getPackageInfo(packageName,0); android.content.pm.ApplicationInfo ai=pi.applicationInfo; String label=ai==null?packageName:String.valueOf(ai.loadLabel(getPackageManager())); ((TextView)findViewById(R.id.tv_info)).setText(label+"\n"+packageName+"\n"+String.valueOf(pi.versionName));}catch(Exception e){((TextView)findViewById(R.id.tv_info)).setText(packageName);}} else if(appParcel!=null){((TextView)findViewById(R.id.tv_info)).setText(R.string.app_info_contract_ready);} findViewById(R.id.btn_backup).setOnClickListener(v->chooseBackupParts()); findViewById(R.id.btn_restore).setOnClickListener(v->restoreBoundary()); }
 private void boundary(int title){new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(R.string.apps_engine_boundary).setPositiveButton(R.string.close,null).show();}
 private void chooseBackupParts(){
  final RestorePart[] values=RestorePart.values(); boolean[] checked=new boolean[values.length];
  for(int i=0;i<values.length;i++)checked[i]=true;
  new MaterialAlertDialogBuilder(this).setTitle(R.string.backup_parts)
    .setMultiChoiceItems(new String[]{
      getString(R.string.backup_part_apk),getString(R.string.backup_part_splits),getString(R.string.backup_part_shared_libs),getString(R.string.backup_part_data),
      getString(R.string.backup_part_external_data),getString(R.string.backup_part_media),
      getString(R.string.backup_part_expansion)},checked,(d,w,isChecked)->checked[w]=isChecked)
    .setNegativeButton(R.string.cancel,null)
    .setPositiveButton(R.string.backup,(d,w)->backupSelected(checked)).show();
 }
 private void backupSelected(boolean[] checked){
  final java.util.LinkedHashSet<AppLocalBackupEngine.Part> parts=new java.util.LinkedHashSet<>();
  if(checked[0])parts.add(AppLocalBackupEngine.Part.APK);
  if(checked[1])parts.add(AppLocalBackupEngine.Part.SPLITS);
  if(checked[2])parts.add(AppLocalBackupEngine.Part.SHARED_LIBS);
  if(checked[3])parts.add(AppLocalBackupEngine.Part.DATA);
  if(checked[4])parts.add(AppLocalBackupEngine.Part.EXTERNAL_DATA);
  if(checked[5])parts.add(AppLocalBackupEngine.Part.MEDIA);
  if(checked[6])parts.add(AppLocalBackupEngine.Part.EXPANSION);
  if(parts.isEmpty()){boundary(R.string.backup);return;}
  new Thread(()->{
   try{
    AppLocalBackupEngine.BackupResult result=new AppLocalBackupEngine(this).backup(
      new com.bare.appslist.data.AppInventoryLoader(this).load().stream()
        .filter(x->x.packageName.equals(packageName)).findFirst().orElseThrow(
          ()->new IllegalStateException("App is no longer installed")),parts);
    runOnUiThread(()->new MaterialAlertDialogBuilder(this).setTitle(R.string.backup)
      .setMessage(getString(R.string.app_backup_success,result.parts.size(),result.size))
      .setPositiveButton(R.string.close,null).show());
   }catch(Exception e){
    runOnUiThread(()->new MaterialAlertDialogBuilder(this).setTitle(R.string.backup)
      .setMessage(getString(R.string.app_backup_failed,
        e.getMessage()==null?e.getClass().getSimpleName():e.getMessage()))
      .setPositiveButton(R.string.close,null).show());
   }
  },"app-backup").start();
 }
 private void restoreSelected(){
  final java.util.LinkedHashSet<AppLocalBackupEngine.Part> parts=new java.util.LinkedHashSet<>();
  for(RestorePart p:selectedParts){
   if(p==RestorePart.APK)parts.add(AppLocalBackupEngine.Part.APK);
   else if(p==RestorePart.SPLITS)parts.add(AppLocalBackupEngine.Part.SPLITS);
   else if(p==RestorePart.SHARED_LIBS)parts.add(AppLocalBackupEngine.Part.SHARED_LIBS);
   else if(p==RestorePart.DATA)parts.add(AppLocalBackupEngine.Part.DATA);
   else if(p==RestorePart.EXTERNAL_DATA)parts.add(AppLocalBackupEngine.Part.EXTERNAL_DATA);
   else if(p==RestorePart.MEDIA)parts.add(AppLocalBackupEngine.Part.MEDIA);
   else if(p==RestorePart.EXPANSION)parts.add(AppLocalBackupEngine.Part.EXPANSION);
  }
  if(packageName==null){boundary(R.string.restore);return;}
  new Thread(()->{
   try{
    AppLocalBackupEngine engine=new AppLocalBackupEngine(this);
    java.util.List<AppLocalBackupEngine.BackupRecord> backups=engine.listBackups(packageName);
    if(backups.isEmpty())throw new IllegalStateException("No local app backup found");
    AppLocalBackupEngine.RestoreResult result=engine.restore(packageName,backups.get(0).id,parts);
    runOnUiThread(()->new MaterialAlertDialogBuilder(this).setTitle(R.string.restore)
      .setMessage(getString(R.string.app_restore_success,result.restoredParts))
      .setPositiveButton(R.string.close,null).show());
   }catch(Exception e){
    runOnUiThread(()->new MaterialAlertDialogBuilder(this).setTitle(R.string.restore)
      .setMessage(getString(R.string.app_restore_failed,e.getMessage()==null?e.getClass().getSimpleName():e.getMessage()))
      .setPositiveButton(R.string.close,null).show());
   }
  },"app-restore").start();
 }
 private void restoreBoundary(){ final RestorePart[] values=RestorePart.values(); boolean[] checked=new boolean[values.length]; for(int i=0;i<values.length;i++)checked[i]=selectedParts.contains(values[i]); new MaterialAlertDialogBuilder(this).setTitle(R.string.restore).setMultiChoiceItems(new String[]{getString(R.string.backup_part_apk),getString(R.string.backup_part_splits),getString(R.string.backup_part_shared_libs),getString(R.string.backup_part_data),getString(R.string.backup_part_external_data),getString(R.string.backup_part_media),getString(R.string.backup_part_expansion)},checked,(d,w,isChecked)->{if(isChecked)selectedParts.add(values[w]);else selectedParts.remove(values[w]);}).setPositiveButton(android.R.string.ok,(d,w)->{if(selectedParts.isEmpty())selectedParts.add(RestorePart.APK);restoreSelected();}).setNegativeButton(R.string.cancel,null).show(); }
 @Override protected void onSaveInstanceState(Bundle out){if(appParcel!=null)out.putParcelable(APP_PARCEL,appParcel); if(packageName!=null)out.putString(PACKAGE_NAME,packageName);out.putStringArrayList("restore_parts",new java.util.ArrayList<>(java.util.Arrays.asList(selectedParts.stream().map(Enum::name).toArray(String[]::new))));super.onSaveInstanceState(out);}
 public enum RestorePart { APK, SPLITS, SHARED_LIBS, DATA, EXTERNAL_DATA, MEDIA, EXPANSION }
 @Override public boolean onSupportNavigateUp(){setResult(Activity.RESULT_CANCELED);finish();return true;}
 @Override protected void onNewIntent(Intent intent){super.onNewIntent(intent);setIntent(intent); if(intent.getBooleanExtra(SHORTCUT,false)){appParcel=intent.getParcelableExtra(APP_PARCEL); packageName=intent.getStringExtra(PACKAGE_NAME);}}
}