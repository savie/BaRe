package com.bare.apps

import android.content.Intent
import android.os.Bundle
import com.bare.apps.domain.*
import com.bare.apps.model.CanonicalApp
import androidx.activity.OnBackPressedCallback
import androidx.appcompat.app.ActionBarDrawerToggle
import androidx.appcompat.app.AppCompatActivity
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
 private var query=""
 private var showSystemApps=false
 private var section="LOCAL"

 override fun onCreate(state:Bundle?){
  super.onCreate(state)
  setContentView(R.layout.app_list_activity)
  section=intent.getStringExtra(KEY_SECTION)?:"LOCAL"
  val filterState=AppFilterStore(this).load()
  showSystemApps=filterState.system!=SystemAppFilter.USER
  drawer=findViewById(R.id.apps_drawer)

  val toolbar=findViewById<MaterialToolbar>(R.id.apps_toolbar)
  setSupportActionBar(toolbar)
  supportActionBar?.title=titleForSection()

  val toggle=ActionBarDrawerToggle(this,drawer,toolbar,R.string.apps_drawer_open,R.string.apps_drawer_close)
  drawer.addDrawerListener(toggle)
  toggle.syncState()

  val recycler=findViewById<androidx.recyclerview.widget.RecyclerView>(R.id.apps_recycler)
  adapter=AppListAdapter(emptyList(),::openApp)
  recycler.layoutManager=LinearLayoutManager(this)
  recycler.adapter=adapter
  findViewById<com.bare.apps.ui.AppFastScrollerView>(R.id.apps_fast_scroller).attachTo(recycler)

  findViewById<androidx.swiperefreshlayout.widget.SwipeRefreshLayout>(R.id.apps_swipe_refresh)
   .setOnRefreshListener{loadApps()}

  findViewById<TabLayout>(R.id.apps_section_tabs).apply{
   getTabAt(if(section=="CLOUD")1 else 0)?.select()
   addOnTabSelectedListener(object:TabLayout.OnTabSelectedListener{
    override fun onTabSelected(tab:TabLayout.Tab){
     section=if(tab.position==1)"CLOUD"else"LOCAL"
     supportActionBar?.title=titleForSection()
     loadApps()
    }
    override fun onTabUnselected(tab:TabLayout.Tab)=Unit
    override fun onTabReselected(tab:TabLayout.Tab)=Unit
   })
  }

  findViewById<android.view.View>(R.id.apps_drawer_quick_actions).setOnClickListener{
   startActivity(Intent(this,AppsQuickActionsActivity::class.java));drawer.closeDrawer(GravityCompat.START)
  }
  findViewById<android.view.View>(R.id.apps_drawer_labels).setOnClickListener{
   startActivity(Intent(this,com.bare.apps.labels.LabelsActivity::class.java));drawer.closeDrawer(GravityCompat.START)
  }
  findViewById<android.view.View>(R.id.apps_drawer_custom_config).setOnClickListener{
   startActivity(Intent(this,com.bare.apps.config.ConfigListActivity::class.java));drawer.closeDrawer(GravityCompat.START)
  }
  findViewById<android.view.View>(R.id.apps_drawer_blacklist).setOnClickListener{
   startActivity(Intent(this,BlacklistActivity::class.java));drawer.closeDrawer(GravityCompat.START)
  }
  findViewById<android.view.View>(R.id.apps_drawer_backup_settings).setOnClickListener{
   startActivity(Intent(this,com.bare.apps.settings.AppBackupLimitsActivity::class.java));drawer.closeDrawer(GravityCompat.START)
  }
  findViewById<android.view.View>(R.id.apps_drawer_settings).setOnClickListener{
   startActivity(Intent(this,com.bare.settings.LanguageActivity::class.java));drawer.closeDrawer(GravityCompat.START)
  }
  findViewById<ExtendedFloatingActionButton>(R.id.apps_batch_button).setOnClickListener{
   startActivity(Intent(this,AppsBatchActivity::class.java).putExtra(KEY_SECTION,section))
  }

  onBackPressedDispatcher.addCallback(this,object:OnBackPressedCallback(true){
   override fun handleOnBackPressed(){
    if(drawer.isDrawerOpen(GravityCompat.START))drawer.closeDrawer(GravityCompat.START)else finish()
   }
  })
  loadApps()
 }

 override fun onCreateOptionsMenu(menu:android.view.Menu):Boolean{
  menuInflater.inflate(R.menu.menu_apps,menu)
  val search=menu.findItem(R.id.menu_apps_search).actionView as SearchView
  search.queryHint=getString(R.string.apps_search)
  search.setOnQueryTextListener(object:SearchView.OnQueryTextListener{
   override fun onQueryTextSubmit(q:String)=true
   override fun onQueryTextChange(q:String):Boolean{query=q;applyProjection();return true}
  })
  return true
 }

 override fun onOptionsItemSelected(item:android.view.MenuItem):Boolean{
  if(item.itemId!=R.id.menu_apps_filter)return super.onOptionsItemSelected(item)
  showFilterDialog()
  return true
 }

 private fun showFilterDialog(){
  val state=AppFilterStore(this).load()
  val choices=arrayOf(
   "User apps","System apps","All apps",
   "Backed up","Not backed up","Synced","Not synced",
   "Installed","Not installed","Enabled","Disabled",
   "Favorites only","Not favorites","All favorites","Launchable","Updated","Labelled or favorites",
   "Backup: last 7 days","Backup: last 30 days","Backup: older",
   "Sort: Name","Sort: Install date","Sort: Update date","Sort: Backup date",
   "Sort: App size","Sort: Backup size","Sort: Date used","Labels..."
  )
  androidx.appcompat.app.AlertDialog.Builder(this)
   .setTitle(R.string.apps_filter)
   .setItems(choices){_,which->
    when(which){
     0->{state.system=SystemAppFilter.USER;showSystemApps=false}
     1->{state.system=SystemAppFilter.SYSTEM;showSystemApps=true}
     2->{state.system=SystemAppFilter.ALL;showSystemApps=true}
     3->state.backup=BackupFilter.BACKED_UP
     4->state.backup=BackupFilter.NOT_BACKED_UP
     5->state.sync=SyncFilter.SYNCED
     6->state.sync=SyncFilter.NOT_SYNCED
     7->state.install=InstallFilter.INSTALLED
     8->state.install=InstallFilter.NOT_INSTALLED
     9->state.enabled=EnabledFilter.ENABLED
     10->state.enabled=EnabledFilter.DISABLED
     11->state.favorite=FavoriteFilter.FAVORITES
     12->state.favorite=FavoriteFilter.NOT_FAVORITES
     13->state.favorite=FavoriteFilter.ALL
     14->state.misc=MiscFilter.LAUNCHABLE
     15->state.misc=MiscFilter.UPDATED
     16->state.misc=MiscFilter.LABELLED_OR_FAVORITES
     17->state.age=BackupAgeFilter.LAST_7_DAYS
     18->state.age=BackupAgeFilter.LAST_30_DAYS
     19->state.age=BackupAgeFilter.OLDER
     20->AppSortState(this).mode=AppSortMode.Name
     21->AppSortState(this).mode=AppSortMode.InstallDate
     22->AppSortState(this).mode=AppSortMode.UpdateDate
     23->AppSortState(this).mode=AppSortMode.BackupDate
     24->AppSortState(this).mode=AppSortMode.AppSize
     25->AppSortState(this).mode=AppSortMode.BackupSize
     26->AppSortState(this).mode=AppSortMode.DateUsed
     27->{showLabelFilterDialog(state)}
    }
    AppFilterStore(this).save(state)
    loadApps()
   }.show()
 }

 private fun showLabelFilterDialog(state:AppFilterState){
  val labels=com.bare.apps.labels.LabelsData(this).labels().toList()
  if(labels.isEmpty()){android.widget.Toast.makeText(this,"No labels available",android.widget.Toast.LENGTH_SHORT).show();return}
  val checked=BooleanArray(labels.size){labels[it] in state.labels}
  androidx.appcompat.app.AlertDialog.Builder(this).setTitle("Labels").setMultiChoiceItems(labels.toTypedArray(),checked){_,which,value->checked[which]=value}
   .setNegativeButton("Cancel",null).setPositiveButton("Apply"){_,_->state.labels=labels.filterIndexed{index,_->checked[index]}.toSet();AppFilterStore(this).save(state);loadApps()}.show()
 }
 private fun loadApps(){
  val swipe=findViewById<androidx.swiperefreshlayout.widget.SwipeRefreshLayout>(R.id.apps_swipe_refresh)
  val empty=findViewById<android.view.View>(R.id.apps_empty)
  val error=findViewById<android.view.View>(R.id.apps_error)
  swipe.isRefreshing=true
  error.visibility=android.view.View.GONE
  if(section=="CLOUD"){
   allItems=emptyList()
   adapter.submitList(emptyList())
   swipe.isRefreshing=false
   empty.visibility=android.view.View.VISIBLE
   findViewById<android.widget.TextView>(R.id.apps_empty_title).setText(R.string.apps_cloud_empty_title)
   findViewById<android.widget.TextView>(R.id.apps_empty_message).setText(R.string.apps_cloud_empty_message)
   return
  }
  Thread{
   runCatching{AppDiscovery.installed(this,showSystemApps)}
    .onSuccess{result->runOnUiThread{
     allItems=result
     swipe.isRefreshing=false
     applyProjection()
     empty.visibility=if(adapter.itemCount==0)android.view.View.VISIBLE else android.view.View.GONE
    }}
    .onFailure{runOnUiThread{
     swipe.isRefreshing=false
     error.visibility=android.view.View.VISIBLE
     empty.visibility=android.view.View.GONE
    }}
  }.start()
 }

 private fun applyProjection(){
  val state=AppFilterStore(this).load()
  val filtered=AppFilterEngine.apply(allItems,section=="CLOUD",state)
  val searched=if(query.isBlank())filtered else filtered.filter{matchesQuery(it,query)}
  adapter.submitList(AppSortState(this).apply(searched))
  findViewById<android.view.View>(R.id.apps_empty).visibility=if(adapter.itemCount==0)android.view.View.VISIBLE else android.view.View.GONE
 }

 private fun matchesQuery(app:CanonicalApp,raw:String):Boolean{
  val tokens=raw.trim().lowercase().split(Regex("\\s+")).filter{it.isNotBlank()}
  if(tokens.isEmpty())return true
  val fields=buildList{
   add(app.name.lowercase())
   add(app.packageName.lowercase())
   add(app.appId.lowercase())
   app.labels.forEach{add(it.lowercase())}
  }
  return tokens.all{token->fields.any{field->field.contains(token)}}
 }

 private fun titleForSection()=if(section=="CLOUD")getString(R.string.apps_cloud)else getString(R.string.apps_local)

 private fun openApp(x:CanonicalApp){
  startActivity(Intent(this,DetailActivity::class.java).putExtra("package_name",x.packageName))
 }

 companion object{const val KEY_SECTION="KEY_SECTION"}
}
