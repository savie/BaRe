package com.bare.apps

import android.content.Intent
import android.os.Bundle
import com.bare.apps.domain.*
import com.bare.apps.model.CanonicalApp
import androidx.activity.OnBackPressedCallback
import androidx.appcompat.app.ActionBarDrawerToggle
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.PopupMenu
import androidx.appcompat.widget.SearchView
import androidx.core.view.GravityCompat
import androidx.recyclerview.widget.LinearLayoutManager
import com.bare.R
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton
import com.google.android.material.tabs.TabLayout

class AppListActivity:AppCompatActivity(){
 private lateinit var adapter:AppListAdapter
 private lateinit var drawer:androidx.drawerlayout.widget.DrawerLayout
 private var allItems:List<CanonicalApp>=emptyList()
 private var showSystemApps=false
 private var section="LOCAL"
 override fun onCreate(state:Bundle?){
  super.onCreate(state);setContentView(R.layout.app_list_activity);section=intent.getStringExtra(KEY_SECTION)?:"LOCAL";drawer=findViewById(R.id.apps_drawer)
  val toolbar=findViewById<MaterialToolbar>(R.id.apps_toolbar);setSupportActionBar(toolbar);supportActionBar?.title=if(section=="CLOUD")getString(R.string.apps_cloud)else getString(R.string.apps_local)
  val toggle=ActionBarDrawerToggle(this,drawer,toolbar,R.string.apps_drawer_open,R.string.apps_drawer_close);drawer.addDrawerListener(toggle);toggle.syncState()
  val recycler=findViewById<androidx.recyclerview.widget.RecyclerView>(R.id.apps_recycler);adapter=AppListAdapter(emptyList(),::openApp);recycler.layoutManager=LinearLayoutManager(this);recycler.adapter=adapter
  findViewById<androidx.swiperefreshlayout.widget.SwipeRefreshLayout>(R.id.apps_swipe_refresh).setOnRefreshListener{loadApps()}
  findViewById<TabLayout>(R.id.apps_section_tabs).apply{getTabAt(if(section=="CLOUD")1 else 0)?.select();addOnTabSelectedListener(object:TabLayout.OnTabSelectedListener{
   override fun onTabSelected(tab:TabLayout.Tab){section=if(tab.position==1)"CLOUD"else"LOCAL";supportActionBar?.title=if(section=="CLOUD")getString(R.string.apps_cloud)else getString(R.string.apps_local);loadApps()}
   override fun onTabUnselected(tab:TabLayout.Tab)=Unit;override fun onTabReselected(tab:TabLayout.Tab)=Unit})}
  listOf(R.id.apps_drawer_quick_actions,R.id.apps_drawer_labels,R.id.apps_drawer_custom_config,R.id.apps_drawer_blacklist,R.id.apps_drawer_backup_settings).forEach{id->findViewById<android.view.View>(id).setOnClickListener{drawer.closeDrawer(GravityCompat.START)}}
  findViewById<android.view.View>(R.id.apps_drawer_settings).setOnClickListener{startActivity(Intent(Settings.ACTION_SETTINGS))}
  findViewById<ExtendedFloatingActionButton>(R.id.apps_batch_button).setOnClickListener{PopupMenu(this,it).apply{menu.add(R.string.apps_batch_backup);menu.add(R.string.apps_batch_restore);menu.add(R.string.apps_batch_select);show()}}
  onBackPressedDispatcher.addCallback(this,object:OnBackPressedCallback(true){override fun handleOnBackPressed(){if(drawer.isDrawerOpen(GravityCompat.START))drawer.closeDrawer(GravityCompat.START)else finish()}})
  loadApps()
 }
 override fun onCreateOptionsMenu(menu:android.view.Menu):Boolean{menuInflater.inflate(R.menu.menu_apps,menu);val search=menu.findItem(R.id.menu_apps_search).actionView as SearchView;search.queryHint=getString(R.string.apps_search);search.setOnQueryTextListener(object:SearchView.OnQueryTextListener{override fun onQueryTextSubmit(q:String)=true;override fun onQueryTextChange(q:String):Boolean{applyFilter(q);return true}});return true}
 override fun onOptionsItemSelected(item:android.view.MenuItem):Boolean{
  if(item.itemId==R.id.menu_apps_filter){
   val labels=arrayOf("User apps","System apps","All apps","Backed up","Not backed up","Synced","Not synced","Installed","Not installed","Enabled","Disabled","Favorites only","Sort: Name","Sort: Install date","Sort: Update date","Sort: Backup date","Sort: App size","Sort: Backup size","Sort: Date used")
   androidx.appcompat.app.AlertDialog.Builder(this).setTitle(R.string.apps_filter).setItems(labels){_,which->
    val s=AppFilterStore(this).load()
    when(which){
     0->s.system=SystemAppFilter.USER;1->s.system=SystemAppFilter.SYSTEM;2->s.system=SystemAppFilter.ALL
     3->s.backup=BackupFilter.BACKED_UP;4->s.backup=BackupFilter.NOT_BACKED_UP
     5->s.sync=SyncFilter.SYNCED;6->s.sync=SyncFilter.NOT_SYNCED
     7->s.install=InstallFilter.INSTALLED;8->s.install=InstallFilter.NOT_INSTALLED
     9->s.enabled=EnabledFilter.ENABLED;10->s.enabled=EnabledFilter.DISABLED;11->s.favoriteOnly=true
     12->AppSortState(this).mode=AppSortMode.Name;13->AppSortState(this).mode=AppSortMode.InstallDate;14->AppSortState(this).mode=AppSortMode.UpdateDate;15->AppSortState(this).mode=AppSortMode.BackupDate;16->AppSortState(this).mode=AppSortMode.AppSize;17->AppSortState(this).mode=AppSortMode.BackupSize;18->AppSortState(this).mode=AppSortMode.DateUsed
    }
    AppFilterStore(this).save(s);loadApps()
   }.show()
   return true
  }
  return super.onOptionsItemSelected(item)
 }
 private fun loadApps(){val swipe=findViewById<androidx.swiperefreshlayout.widget.SwipeRefreshLayout>(R.id.apps_swipe_refresh);val empty=findViewById<android.view.View>(R.id.apps_empty);val error=findViewById<android.view.View>(R.id.apps_error);if(section=="CLOUD"){allItems=emptyList();adapter.submitList(emptyList());swipe.isRefreshing=false;error.visibility=android.view.View.GONE;empty.visibility=android.view.View.VISIBLE;findViewById<android.widget.TextView>(R.id.apps_empty_title).setText(R.string.apps_cloud_empty_title);findViewById<android.widget.TextView>(R.id.apps_empty_message).setText(R.string.apps_cloud_empty_message);return};swipe.isRefreshing=true;error.visibility=android.view.View.GONE;Thread{runCatching{AppDiscovery.installed(this,showSystemApps)}.onSuccess{result->runOnUiThread{allItems=result;adapter.submitList(result);swipe.isRefreshing=false;empty.visibility=if(result.isEmpty())android.view.View.VISIBLE else android.view.View.GONE}}.onFailure{runOnUiThread{swipe.isRefreshing=false;error.visibility=android.view.View.VISIBLE;empty.visibility=android.view.View.GONE}}}.start()}
 private fun applyFilter(q:String){val x=q.trim();adapter.submitList(if(x.isEmpty())allItems else allItems.filter{it.label.contains(x,true)||it.packageName.contains(x,true)})}
 private fun openApp(x:CanonicalApp){startActivity(Intent(this,DetailActivity::class.java).putExtra("package_name",x.packageName))}
 companion object{const val KEY_SECTION="KEY_SECTION"}
}