package com.bare.apps
import android.content.Intent
import android.net.Uri
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.widget.PopupMenu
import androidx.recyclerview.widget.RecyclerView
import androidx.core.content.FileProvider
import java.io.File
import com.bare.R
import com.bare.apps.model.CanonicalApp
import com.bare.apps.ui.AppItemAction
import com.bare.apps.ui.AppItemActions
import com.bare.apps.ui.AppActionId

class AppListAdapter(private var items:List<CanonicalApp>,private val onItemClick:(CanonicalApp)->Unit):RecyclerView.Adapter<AppListAdapter.Holder>(){
 class Holder(v:View):RecyclerView.ViewHolder(v){val icon:ImageView=v.findViewById(R.id.app_item_icon);val title:TextView=v.findViewById(R.id.app_item_title);val subtitle:TextView=v.findViewById(R.id.app_item_subtitle);val status:TextView=v.findViewById(R.id.app_item_status);val labels:TextView=v.findViewById(R.id.app_item_labels);val favorite:ImageView=v.findViewById(R.id.app_item_favorite);val selection:android.widget.CheckBox=v.findViewById(R.id.app_item_selection);val menu:View=v.findViewById(R.id.app_item_menu)}
 fun submitList(v:List<CanonicalApp>){items=v;notifyDataSetChanged()}
 override fun onCreateViewHolder(p:ViewGroup,t:Int)=Holder(LayoutInflater.from(p.context).inflate(R.layout.app_item,p,false))
 override fun onBindViewHolder(h:Holder,position:Int){
  val x=items[position];val pm=h.itemView.context.packageManager
  h.icon.setImageDrawable(runCatching{pm.getApplicationIcon(x.packageName)}.getOrNull());h.title.text=x.name;h.subtitle.text=x.packageName
  val backup=if(x.hasLocalBackup||x.hasCloudBackup)" · "+h.itemView.context.getString(R.string.apps_backed_up) else ""
  h.labels.text=x.labels.joinToString(" · ");h.labels.visibility=if(x.labels.isEmpty())View.GONE else View.VISIBLE;h.favorite.visibility=View.VISIBLE;h.favorite.alpha=if(x.favorite)1f else 0.35f;h.favorite.setOnClickListener{val favorite=AppFavoriteStore(h.itemView.context).toggle(x.packageName);x.favorite=favorite;h.favorite.alpha=if(favorite)1f else 0.35f};h.selection.visibility=View.GONE;h.status.text=(if(!x.enabled)h.itemView.context.getString(R.string.apps_status_disabled) else if(x.bundled)h.itemView.context.getString(R.string.apps_status_system) else h.itemView.context.getString(R.string.apps_status_installed))+backup
  h.itemView.setOnClickListener{onItemClick(x)}
  h.menu.setOnClickListener{showActions(h.menu,x)}
 }
 private fun showActions(anchor:View,app:CanonicalApp){
  val root=runCatching{ProcessBuilder("su","-c","id").start().waitFor()==0}.getOrDefault(false)
  PopupMenu(anchor.context,anchor).apply{
   AppItemActions.resolve(app,root).filter{it.enabled}.forEach{action->menu.add(action.title).setOnMenuItemClickListener{perform(anchor.context,app,action);true}}
   show()
  }
 }
 private fun perform(context:android.content.Context,app:CanonicalApp,action:AppItemAction){
  when(action.id){
   AppActionId.LAUNCH->context.packageManager.getLaunchIntentForPackage(app.packageName)?.let{context.startActivity(it)}
   AppActionId.APP_INFO->context.startActivity(Intent(context,AppInfoActivity::class.java).putExtra("package_name",app.packageName))
   AppActionId.PLAY_STORE->context.startActivity(Intent(Intent.ACTION_VIEW,Uri.parse("market://details?id="+app.packageName)))
   AppActionId.SHARE_APK->{val file=app.sourceDir?.let(::File);if(file?.exists()==true){val uri=FileProvider.getUriForFile(context,context.packageName+".fileprovider",file);context.startActivity(Intent.createChooser(Intent(Intent.ACTION_SEND).setType("application/vnd.android.package-archive").putExtra(Intent.EXTRA_STREAM,uri).addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION),context.getString(R.string.share_apk)))}}
   AppActionId.UNINSTALL->context.startActivity(Intent(Intent.ACTION_DELETE,Uri.parse("package:"+app.packageName)))
   AppActionId.FORCE_STOP->runShell("am force-stop "+app.packageName)
   AppActionId.CLEAR_DATA->runShell("pm clear "+app.packageName)
   AppActionId.ENABLE_DISABLE->runShell("pm "+(if(app.enabled)"disable-user --user 0 " else "enable ")+app.packageName)
   else->onItemClick(app)
  }
 }
 private fun runShell(command:String){runCatching{ProcessBuilder("su","-c",command).redirectErrorStream(true).start().waitFor()}}
 override fun getItemCount()=items.size
}